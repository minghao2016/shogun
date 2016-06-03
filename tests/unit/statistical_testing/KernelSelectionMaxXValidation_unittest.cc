/*
 * Copyright (c) The Shogun Machine Learning Toolbox
 * Written (w) 2016 Soumyajit De
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * The views and conclusions contained in the software and documentation are those
 * of the authors and should not be interpreted as representing official policies,
 * either expressed or implied, of the Shogun Development Team.
 */

#include <shogun/base/some.h>
#include <shogun/kernel/GaussianKernel.h>
#include <shogun/features/DenseFeatures.h>
#include <shogun/features/streaming/generators/MeanShiftDataGenerator.h>
#include <shogun/statistical_testing/QuadraticTimeMMD.h>
#include <shogun/statistical_testing/kernelselection/KernelSelectionStrategy.h>
#include <gtest/gtest.h>

using namespace shogun;

TEST(KernelSelectionMaxXValidation, single_kernel)
{
	const index_t m=5;
	const index_t n=10;
	const index_t dim=1;
	const float64_t difference=0.5;
	const index_t num_kernels=10;
	const index_t num_runs=1;
	const index_t num_folds=5;
	const float64_t alpha=0.05;

	sg_rand->set_seed(12345);

	auto gen_p=some<CMeanShiftDataGenerator>(0, dim, 0);
	auto gen_q=some<CMeanShiftDataGenerator>(difference, dim, 0);
	auto feats_p=gen_p->get_streamed_features(m);
	auto feats_q=gen_q->get_streamed_features(n);

	auto mmd=some<CQuadraticTimeMMD>(feats_p, feats_q);

	for (auto i=0, sigma=-5; i<num_kernels; ++i, sigma+=1)
	{
		float64_t tau=pow(2, sigma);
		mmd->add_kernel(new CGaussianKernel(10, tau));
	}

	mmd->set_kernel_selection_strategy(KSM_MAXIMIZE_XVALIDATION, num_runs, alpha);
	mmd->set_train_test_mode(true);
	mmd->set_train_test_ratio(num_folds-1);
	mmd->select_kernel();
	mmd->set_train_test_mode(false);

	auto selected_kernel=static_cast<CGaussianKernel*>(mmd->get_kernel());
	EXPECT_NEAR(selected_kernel->get_width(), 0.03125, 1E-10);
}
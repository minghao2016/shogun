SET(CSHARP_FLAGS "/lib:${CSHARP_MODULAR_BUILD_DIR};/r:modshogun")

# add test case for each generated example
# (not generated yet so have to fake filenames from META_EXAMPLES list)
FOREACH(META_EXAMPLE ${META_EXAMPLES})
    # assume a structure <target_language>/<category>/listing.sg
    GET_META_EXAMPLE_VARS(${META_EXAMPLE} EXAMPLE_NAME EXAMPLE_REL_DIR EXAMPLE_NAME_WITH_DIR)

	ADD_CUSTOM_COMMAND(OUTPUT compiled_csharp_${EXAMPLE_NAME_WITH_DIR}
		COMMAND	${CSHARP_COMPILER} ${EXAMPLE_NAME}.cs ${CSHARP_FLAGS} -out:${EXAMPLE_NAME}.exe
		DEPENDS csharp_modular
		WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${EXAMPLE_REL_DIR})
	LIST(APPEND CSHARP_EXAMPLES compiled_csharp_${EXAMPLE_NAME_WITH_DIR})

	add_test(NAME generated_csharp-${EXAMPLE_NAME_WITH_DIR}
		WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${EXAMPLE_REL_DIR}
		COMMAND ${CSHARP_INTERPRETER} ${CMAKE_CURRENT_BINARY_DIR}/${EXAMPLE_REL_DIR}/${EXAMPLE_NAME}.exe)
	set_property(TEST generated_csharp-${EXAMPLE_NAME_WITH_DIR} PROPERTY
		ENVIRONMENT "MONO_PATH=${CSHARP_MODULAR_BUILD_DIR}")
ENDFOREACH()

add_custom_target(build_csharp_meta_examples ALL
				 DEPENDS ${CSHARP_EXAMPLES}
				 COMMENT "Compiled generated C# examples")

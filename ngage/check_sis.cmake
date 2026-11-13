# Fails the build when makesis produced an empty package (header only).
file(SIZE "${SIS}" sis_size)
if(sis_size LESS 100000)
  message(FATAL_ERROR "hamtaro.sis is only ${sis_size} bytes: makesis did not package the files (check ngage/hamtaro.pkg)")
endif()
message(STATUS "hamtaro.sis: ${sis_size} bytes")

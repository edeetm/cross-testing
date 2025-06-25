project('cpp_project', 'cpp', default_options : ['cpp_std=c++17'])

# Use gtest_main to get the main() function from GoogleTest
gtest_dep = dependency('gtest', fallback : ['googletest', 'gtest'])
gtest_main_dep = dependency('gtest_main', fallback : ['googletest', 'gtest_main'])

math_lib = static_library('math_utils',
  'src/math_utils.cpp',
  include_directories : include_directories('include')
)

test_sources = [
  'tests/general_tests.cpp',
  'tests/math_utils_test.cpp',
]

foreach src : test_sources
  name = src.split('/')[-1].split('.')[0]
  exe = executable(name,
    src,
    dependencies : [gtest_dep, gtest_main_dep],
    link_with : math_lib,
    include_directories : include_directories('include'),
  )
  test(name, exe)
endforeach

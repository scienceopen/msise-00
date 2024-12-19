function cmake(src_dir)
% build program using CMake
arguments
  src_dir (1,1) string
end

assert(isfolder(src_dir), "source directory not found: %s", src_dir)

build_dir = fullfile(src_dir, "build");

fix_macos()

assert(system("cmake --version") == 0, 'CMake not found')

cmd = "cmake -B" + build_dir + " -S" + src_dir;
assert(system(cmd) == 0, 'error building with CMake')

cmd = "cmake --build " + build_dir;
assert(system(cmd) == 0, 'error building with CMake')

end

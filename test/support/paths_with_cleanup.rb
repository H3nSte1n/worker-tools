def test_gem_path
  Gem::Specification.find_by_name('worker_tools').gem_dir
end

def test_tmp_path
  File.join(test_gem_path, 'tmp')
end

FileUtils.mkdir_p(test_tmp_path)

Minitest.after_run do
  FileUtils.remove_dir(test_tmp_path) if Dir.exist?(test_tmp_path)
end

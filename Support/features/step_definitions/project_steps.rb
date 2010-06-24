Given /^I am in an application folder$/ do
  in_tmp_folder do
    FileUtils.cp_r(File.dirname(__FILE__) + "/../fixtures/someapp", "myapp")
  end
  setup_active_project_folder "myapp"
end

Given /^it is a git repository with a remote$/ do
  in_project_folder do
    %x[ git init ]
    %x[ git add . ]
    %x[ git commit -m "initial commit" ]
    %x[ git remote add origin git@github.fake:/drnic/somefakerepo.git ]
  end
end

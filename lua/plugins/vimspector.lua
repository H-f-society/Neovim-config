-- 配置调试器后端
local vimspector = require('vimspector')

local function get_classpath()
  -- 获取项目的 classpath 路径
  local classpath = vim.fn.system('mvn dependency:build-classpath -Dmdep.outputFile=/dev/stdout')
  -- 去除输出中的换行符，并将路径拆分为数组
  return vim.split(string.gsub(classpath, '\n', ''), ':')
end

vim.g.vimspector_config = {
  configurations = {
    java = {
      configurations = {
        {
          name = "Debug (Attach)",
          type = "java",
          request = "attach",
          hostName = "localhost",
          port = 5005,
          classPaths = get_classpath(),
          sourcePaths = {"src/main/java"},
          projectName = "my_project",
          jvmOptions = {"-Dspring.profiles.active=dev"}
        }
      }
    }
  }
}

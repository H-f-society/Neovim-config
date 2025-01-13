# Neovim-config
> NVIM v0.9.2

- 推荐使用Rime输入法，可配置esc键秒切回半角符，nvim下来回切换中英文嘎嘎香
  > [https://github.com/rime](https://github.com/rime)
  
  > default.custom.yaml配置
  ```yaml
  patch:
    key_binder:
    bindings:
      # ESC，切换英文
      - { when: always, accept: Release+Escape, toggle: ascii_mode }

  ```

- nvim插件合集
  > [https://github.com/rockerBOO/awesome-neovim](https://github.com/rockerBOO/awesome-neovim)

![img](.images/img-02.jpg) 

![img](.images/img-01.jpg) 


- 打印启动耗时日志信息
> nvim --startuptime vim.log


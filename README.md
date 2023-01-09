
- StunelSwitchOnMacOS ::: 启动 stunnel on MacOS
  - S1:本地创建两个网络位置 this 和 vpn
  - S2:配置网络位置vpn => 高级 => 代理 => 将 HTTP 和 HTTPS 进行修改 => 端口为 stunnel 自己配置
  - S4:执行 vps_zw.sh 自动切换

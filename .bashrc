#source /usr/local/opt/python/Frameworks/Python.framework/Versions/Current/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
PATH=/usr/local/opt/python/Frameworks/Python.framework/Versions/Current/lib/python2.7/site-packages:$PATH

alias livesite="ssh -A admin.internal.sessionm.com"
eval `ssh-agent`
ssh-add

function jc {
host=$1
proxy_port=${2:-8123}
jconsole_host=vachon
ssh -f -D$proxy_port $host 'while true; do sleep 1; done' 
ssh_pid=`ps ax | grep "[s]sh -f -D$proxy_port" | awk '{print $1}'`
jconsole -J-DsocksProxyHost=localhost -J-DsocksProxyPort=$proxy_port service:jmx:rmi:///jndi/rmi://${jconsole_host}:7199/jmxrmi
kill $ssh_pid
}

PATH=$HOME/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH # Add RVM to PATH for scripting

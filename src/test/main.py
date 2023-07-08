cache_dir = "/var/cache/apt-cacher-ng"
log_dir = "/var/log/apt-cacher-ng"

def monitor():
  cmd = f"tail -f {log_dir}/apt-cacher.log"

def _cleanLog():
  cmd = f"echo '' | sudo tee {log_dir}/apt-cacher.log"

def _cleanCache():
  cmd = f"rm -r {cache_dir}/*"

def clean():
  _cleanLog()
  _cleanCache()

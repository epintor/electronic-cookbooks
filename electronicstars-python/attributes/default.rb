# include_attribute "deploy"
include_attribute "electronicstars-python::django"


node.default["deploy_python"]["custom_type"] = "python"
node.default["deploy_python"]["symlink_before_migrate"] = {}
node.default["deploy_python"]["purge_before_symlink"] = []
node.default["deploy_python"]["create_dirs_before_symlink"] = ['public', 'tmp']
node.default["deploy_python"]["packages"] = []
node.default["deploy_python"]["os_packages"] = []
node.default["deploy_python"]["venv_options"] = '--no-site-packages'

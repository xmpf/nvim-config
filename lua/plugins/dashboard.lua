local home = os.getenv('HOME') 
local db = require('dashboard')

db.custom_header = {
'ishtar',
'@megatr0nz',
}

db.dashboard_default_executive = 'telescope' 
db.dashboard_session_directory = vim.fn.stdpath('data') .. '/sessions'
db.preview_file_height = 180
db.preview_file_width = 70
db.custom_footer = { '' }

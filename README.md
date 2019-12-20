# PSQL backup script
Script backup postgresql

# Ghi chú
Script này dùng để backup dữ liệu và nén với dung lượng giảm còn 35% so với file chưa nén.
Script chạy tự động để dump dữ liệu và xóa dữ liệu cũ với thời gian cho trước
File backup có tên: 20191220_144124_db2019_psql_backup.sql

Các thông số trong file:
- BACKUP_DIR : đường dẫn lưu file backup
- DAYS_TO_KEEP : số ngày giữ lại, tự xóa những file lâu ngày hơn
- FILE_SUFFIX : đuôi file có dạng như sau. 
- DATABASE : tên databse
- USER : user sử dụng để dump db
- PASSWORD : mật khẩu user nếu có

# Cách restore dữ liệu

Restore dữ liệu bằng câu lệnh sau:

pg_restore -Fc -U db2019 -d user2019 < 20191220_144124_db2019_psql_backup.sql


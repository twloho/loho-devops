
CREATE DATABASE IF NOT EXISTS `{{ item.name }}` COLLATE 'utf8_unicode_ci';
GRANT ALL ON `{{ item.name }}`.* TO '{{ item.user }}'@'%';

FLUSH PRIVILEGES ;
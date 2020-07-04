create database db_vueitem charset utf8mb4;

create table swipe(
    id int auto_increment primary key,
    pic varchar(100)
);
insert into swipe (pic) values ('slideShow_01.jpg');
insert into swipe (pic) values ('slideShow_02.jpg');
insert into swipe (pic) values ('slideShow_03.jpg');

create table NewsList(
    id int auto_increment primary key,
    pic varchar(100),
    title varchar(50),
    add_time varchar(50),
    click varchar(10)
);

create table NewsInfo(
    id int auto_increment primary key not null,
    title varchar(50) not null,
    click varchar(10) not null,
    add_time varchar(50) not null,
    content varchar(1000) not null
);

insert into NewsList (pic,title,add_time,click) values ('NewsListImg_01.png','买买买的年轻人到底在买什么','2020-06-20 12:12:12','1');
insert into NewsList (pic,title,add_time,click) values ('NewsListImg_02.png','拼多多百亿补贴一周年，我们为你挑选了 10 件划算的东西','2020-06-20 12:12:12','2');
insert into NewsList (pic,title,add_time,click) values ('NewsListImg_03.png','微信 7.0.13 正式发布！iOS 也能修改微信号，「深色模式」有开关了','2020-06-20 12:12:12','3');
insert into NewsList (pic,title,add_time,click) values ('NewsListImg_04.png','使用手机太频繁，影响生活？这款 iOS 上的时间管理 App 让你不再想当「低头族」','2020-06-20 12:12:12','4');
insert into NewsList (pic,title,add_time,click) values ('NewsListImg_05.png','忍不住了，我要入手','2020-06-20 12:12:12','5');
insert into NewsList (pic,title,add_time,click) values ('NewsListImg_06.png','网易有道词典笔：精巧圆润，无所不能','2020-06-20 12:12:12','4');
insert into NewsList (pic,title,add_time,click) values ('NewsListImg_07.jpg','考验技术的时候到了！SpaceX 出了个「飞船模拟器」，你对接几次能成功？','2020-06-20 12:12:12','3');
insert into NewsList (pic,title,add_time,click) values ('NewsListImg_08.jpg','总是忘记父母的生日？用这款 App，时刻提醒你陪伴关爱家人','2020-06-20 12:12:12','2');
insert into NewsList (pic,title,add_time,click) values ('NewsListImg_09.jpg','12 元的跳绳都能玩出 200 元的水平！这是我今年的 Apple Watch 最佳 App','2020-06-20 12:12:12','1');
insert into NewsList (pic,title,add_time,click) values ('NewsListImg_10.jpg','听歌识曲、出行待办、睡眠监控，Apple Watch 能做的，可不只是看时间','2020-06-20 12:12:12','0');

create table NewsInfo(
    id int auto_increment primary key not null,
    title varchar(50) not null,
    click varchar(10) not null,
    add_time varchar(50) not null,
    content varchar(1000) not null
);

insert into NewsInfo (title,click,add_time,content) values ('买买买的年轻人到底在买什么','1','2020-06-20 12:12:12',"买买买的年轻人到底在买什么<img src = 'https://s3.ifanr.com/wp-content/uploads/2020/06/234567543.png!720'/>");
insert into NewsInfo (title,click,add_time,content) values ('拼多多百亿补贴一周年，我们为你挑选了 10 件划算的东西','2','2020-06-20 12:12:12',"拼多多百亿补贴一周年，我们为你挑选了 10 件划算的东西<img src = 'https://s3.ifanr.com/wp-content/uploads/2020/06/sshot-20200617-160513.png!720'/>");
insert into NewsInfo (title,click,add_time,content) values ('微信 7.0.13 正式发布！iOS 也能修改微信号，「深色模式」有开关了','3','2020-06-20 12:12:12',"微信 7.0.13 正式发布！iOS 也能修改微信号，「深色模式」有开关了<img src = 'https://s3.ifanr.com/wp-content/uploads/2020/06/photo.jpeg!720'/>");
insert into NewsInfo (title,click,add_time,content) values ('使用手机太频繁，影响生活？这款 iOS 上的时间管理 App 让你不再想当「低头族」','4','2020-06-20 12:12:12',"使用手机太频繁，影响生活？这款 iOS 上的时间管理 App 让你不再想当「低头族」<img src = 'https://s3.ifanr.com/wp-content/uploads/2020/06/0-1-1024x576.jpg!720'/>");
insert into NewsInfo (title,click,add_time,content) values ('忍不住了，我要入手','5','2020-06-20 12:12:12',"忍不住了，我要入手<img src = 'https://s3.ifanr.com/wp-content/uploads/2020/06/img_5ee352253f5a9.png!720'/>");
insert into NewsInfo (title,click,add_time,content) values ('网易有道词典笔：精巧圆润，无所不能','4','2020-06-20 12:12:12',"网易有道词典笔：精巧圆润，无所不能<img src = 'https://s3.ifanr.com/wp-content/uploads/2020/06/20200610175815.png!720'/>");
insert into NewsInfo (title,click,add_time,content) values ('考验技术的时候到了！SpaceX 出了个「飞船模拟器」，你对接几次能成功？','3','2020-06-20 12:12:12',"考验技术的时候到了！<img src = 'https://s3.ifanr.com/wp-content/uploads/2020/06/upaYtpHGtVrM2M0TDwaPrK88ql73XyvpQiWtbbvdt3E_1.jpg!720'/>");
insert into NewsInfo (title,click,add_time,content) values ('总是忘记父母的生日？用这款 App，时刻提醒你陪伴关爱家人','2','2020-06-20 12:12:12',"总是忘记父母的生日？用这款 App，时刻提醒你陪伴关爱家人<img src = 'https://s3.ifanr.com/wp-content/uploads/2020/06/8441591150701_.pic_hd.jpg!720'/>");
insert into NewsInfo (title,click,add_time,content) values ('12 元的跳绳都能玩出 200 元的水平！这是我今年的 Apple Watch 最佳 App','1','2020-06-20 12:12:12',"12 元的跳绳都能玩出 200 元的水平！这是我今年的 Apple Watch 最佳 App<img src = 'https://s3.ifanr.com/wp-content/uploads/2020/05/IMG_4552-1.jpg!720'/>");
insert into NewsInfo (title,click,add_time,content) values ('听歌识曲、出行待办、睡眠监控，Apple Watch 能做的，可不只是看时间','0','2020-06-20 12:12:12',"听歌识曲、出行待办、睡眠监控，Apple Watch 能做的，可不只是看时间<img src = 'https://s3.ifanr.com/wp-content/uploads/2020/05/02.jpg!720'/>");

create table comments(
    id int auto_increment primary key not null,
    user_name varchar(50) not null,
    add_time varchar(50) not null,
    content varchar(200) not null
)

insert into comments(user_name,add_time,content) values ('匿名用户','2020-07-04 12:12:12','大道无垠，精诚致远');
insert into comments(user_name,add_time,content) values ('匿名用户','2020-07-04 12:12:12','大道无垠，精诚致远');
insert into comments(user_name,add_time,content) values ('匿名用户','2020-07-04 12:12:12','大道无垠，精诚致远');
insert into comments(user_name,add_time,content) values ('匿名用户','2020-07-04 12:12:12','大道无垠，精诚致远');
insert into comments(user_name,add_time,content) values ('匿名用户','2020-07-04 12:12:12','大道无垠，精诚致远');
insert into comments(user_name,add_time,content) values ('匿名用户','2020-07-04 12:12:12','大道无垠，精诚致远');
insert into comments(user_name,add_time,content) values ('匿名用户','2020-07-04 12:12:12','大道无垠，精诚致远');
insert into comments(user_name,add_time,content) values ('匿名用户','2020-07-04 12:12:12','大道无垠，精诚致远');
insert into comments(user_name,add_time,content) values ('匿名用户','2020-07-04 12:12:12','大道无垠，精诚致远');
insert into comments(user_name,add_time,content) values ('匿名用户','2020-07-04 12:12:12','大道无垠，精诚致远');
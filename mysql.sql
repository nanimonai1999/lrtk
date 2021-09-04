set
  names utf8;
DROP database if exists pic;
CREATE database pic charset = utf8;
# mysql 乱码解决方式chcp 65001
  use pic;
create table userinfo(
    u_id int primary key auto_increment,
    uname varchar(255),
    #用户自定义仅可包含数字字母美元符号下划线
    upwd varchar(32),
    #用户自定义 最长32位字符
    uhead varchar(255) #存储图片路径
  );
create table p_scourse(
    p_id int primary key auto_increment,
    p_title varchar(255) UNIQUE,
    p_launchtime DATETIME,
    p_author VARCHAR(255),
    p_sort VARCHAR(255),
    #png jpg psd day四个大分类
    p_src VARCHAR(255) UNIQUE,
    p_idetail VARCHAR(255),
    p_dlnumber int,
    p_key VARCHAR(255),
    #图片小分类
    p_size VARCHAR(255) #尺寸为xxx*xxx格式
  );
insert into
  p_scourse
values
  (
    "",
    "神臂弓",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "./img/wzicon/icon4.png",
    "又称神臂弩，北宋神宗时发明，弓身长三尺三，弦长二尺五",
    0,
    "物品",
    "200*200"
  );
insert into
  p_scourse
values
  (
    "",
    "神臂弓2",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "./img/wzicon/icon3.png",
    "又称神臂弩，北宋神宗时发明，弓身长三尺三，弦长二尺五",
    0,
    "风景",
    "200*200"
  );
insert into
  p_scourse
values
  (
    "",
    "神臂弓3",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "./img/wzicon/icon2.png",
    "又称神臂弩，北宋神宗时发明，弓身长三尺三，弦长二尺五",
    0,
    "礼物",
    "200*200"
  );
insert into
  p_scourse
values
  (
    "",
    "卡通手绘装饰小彩旗",
    "2021-8-12 00:00:00",
    "百度",
    "png",
    "5f4cabc83da89__300.png",
    "",
    64210,
    "卡通手绘",
    "3500x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "白色天气透明云彩云朵",
    "2021-8-12 00:00:00",
    "百度",
    "png",
    "5f4ca8a1a3366__300.png",
    "",
    53540,
    "漂浮元素",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "白色水花飞溅水滴效果元素",
    "2021-8-12 00:00:00",
    "百度",
    "png",
    "5f4ca8d2de627__300.png",
    "",
    351022,
    "效果元素",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "荧光渐变科技线条",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4ca84cb4cdc__300.png",
    "本设计作品为装饰图案，格式PNG",
    450210,
    "装饰图案",
    "3000x3000px"
  );
insert into
  p_scourse
values
  (
    "",
    "白色梦幻星光星空光效",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4ca866cf8cd__300.png",
    "本设计作品为效果元素，格式PNG",
    450532,
    "效果元素",
    "1000x1000px"
  );
insert into
  p_scourse
values
  (
    "",
    "蓝色科技圆形图案元素",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4ca966bef6b__300.png",
    "本设计作品为装饰图案，格式PNG",
    45210,
    "装饰图案",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "中国风手绘水墨风景山水画",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4ca978a9fde__300.png",
    "本设计作品为效果元素，格式PNG",
    14274,
    "效果元素",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "简约科技点线图案元素",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4ca9159bf03__300.png",
    "本设计作品为效果元素，格式PNG",
    35104,
    "效果元素",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "矢量舞台灯光光效元素",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4ca91624fe9__300.png",
    "本设计作品为效果元素，格式PNG",
    1504,
    "效果元素",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "科技数码炫酷时光机",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4ca967570df__300.png",
    "本设计作品为装饰图案，格式PNG",
    12542,
    "装饰图案",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "黄色炫光光源效果元素",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4ca95554587__300.png",
    "本设计作品为效果元素，格式PNG",
    9754,
    "效果元素",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "卡通一叠书",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4cab8d49b78__300.png",
    "本设计作品为卡通手绘，格式PNG",
    4534,
    "卡通手绘",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "手绘插画绿色植物",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4caba113a49__300.png",
    "本设计作品为卡通手绘，格式PNG",
    5432,
    "卡通手绘",
    "3000x3000px"
  );
insert into
  p_scourse
values
  (
    "",
    "建军节建党节国庆节华表丝绸",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4caba626be4__300.png",
    "本设计作品为装饰图案，格式PNG",
    845387,
    "装饰图案",
    "635x411px"
  );
insert into
  p_scourse
values
  (
    "",
    "建党节天安门红色剪影背景元素",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4cacc9f1a47__300.png",
    "本设计作品为装饰图案，格式PNG",
    348354,
    "装饰图案",
    "5680x4180px"
  );
insert into
  p_scourse
values
  (
    "",
    "手绘卡通爱心纸飞机",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4cabbd56f45__300.png",
    "本设计作品为卡通手绘，格式PNG",
    534,
    "卡通手绘",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "手绘黄色孔明灯灯插画",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4cac8c416d3__300.png",
    "本设计作品为漂浮元素，格式PNG",
    15347,
    "漂浮元素",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "中国风边框装饰水墨风古风石头山",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4cac652f031__300.png",
    "本设计作品为装饰图案，格式PNG",
    45314,
    "装饰图案",
    "2000x2000px"
  );
insert into
  p_scourse
values
  (
    "",
    "手绘卡通比耶胜利手势",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4cac3311b0d__300.png",
    "本设计作品为卡通手绘，格式PNG",
    4854,
    "卡通手绘",
    "3000x3000px"
  );
insert into
  p_scourse
values
  (
    "",
    "花草手绘卡通装饰五彩边框夏天植物",
    "2021-8-9 00:00:00",
    "百度",
    "png",
    "5f4cadcc4ecb6__300.png",
    "本设计作品为装饰图案，格式PNG",
    1531,
    "装饰图案",
    "2000x2000px"
  );
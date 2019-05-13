-- ----------------------------
-- image_bg（背景图片）
-- ----------------------------
INSERT INTO `image_bg` (
    `add_time`,
    `add_user`,
    `edit_time`,
    `edit_user`,
    `del_flag`,
    `image_name`,
    `image_path`,
    `image_size`
)
VALUES
(
    '2019-04-22 11:21:09.699',
    '1',
    '2019-04-22 11:21:09.699',
    '1',
    '1',
    '云资源监控.png',
    '955fe43d\\a0e2aa75\\4a64cedd\\77e27767',
    '61983'
);

-- SET @instance_background_img = @@IDENTITY;
SET @instance_background_img = 5;

-- ----------------------------
-- screen_instance（大屏实例）
-- ----------------------------
SET @version = 1;

INSERT INTO `screen_instance` (
    `add_time`,
    `add_user`,
    `edit_time`,
    `edit_user`,
    `del_flag`,
    `instance_title`,
    `instance_background_color`,
    `instance_background_img`,
    `instance_height`,
    `instance_width`,
    `instance_version`,
    `instance_view_img`
)
VALUES
(
    '2019-04-22 14:15:59.15',
    '1',
    '2019-04-22 14:15:59.15',
    '1',
    '1',
    '大数据计算服务运维视屏',
    '#263546',
    @instance_background_img,
    '1080',
    '1920',
    @version,
    ''
);

-- ----------------------------
-- 标题相关（共8个）
-- ----------------------------
SET @instance_id = @@IDENTITY;

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '35',
    'chart0',
    '8000',
    '{\"title\":\" 大数据计算服务运维视屏——测试项目\",\"fontColor\":\"#ffffff\",\"fontSize\":28,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '500',
    '215',
    '15',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '30',
    'chart1',
    '8000',
    '{\"title\":\"服务器整体监测\",\"fontColor\":\"#ffffff\",\"fontSize\":24,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '180',
    '60',
    '100',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '30',
    'chart2',
    '8000',
    '{\"title\":\"MaxCompute任务总数\",\"fontColor\":\"#ffffff\",\"fontSize\":24,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '250',
    '60',
    '305',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '30',
    'chart3',
    '8000',
    '{\"title\":\"任务情况\",\"fontColor\":\"#ffffff\",\"fontSize\":24,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '125',
    '895',
    '305',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '30',
    'chart4',
    '8000',
    '{\"title\":\"表平均容量\",\"fontColor\":\"#ffffff\",\"fontSize\":24,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '130',
    '1545',
    '305',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '30',
    'chart5',
    '8000',
    '{\"title\":\"表储存容量\",\"fontColor\":\"#ffffff\",\"fontSize\":24,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '135',
    '60',
    '715',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '30',
    'chart6',
    '8000',
    '{\"title\":\"运行耗时最长任务\",\"fontColor\":\"#ffffff\",\"fontSize\":24,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '200',
    '495',
    '715',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '30',
    'chart7',
    '8000',
    '{\"title\":\"资源耗时最大任务\",\"fontColor\":\"#ffffff\",\"fontSize\":24,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '200',
    '895',
    '715',
    @version
);

-- ----------------------------
-- 服务器整体监控(标题)
-- ----------------------------
INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '20',
    'chart8',
    '8000',
    '{\"title\":\"计算资源消耗\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":18,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '115',
    '75',
    '160',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '20',
    'chart9',
    '8000',
    '{\"title\":\"磁盘总空间/利用率\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":18,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '160',
    '530',
    '160',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '20',
    'chart10',
    '8000',
    '{\"title\":\"内存总数/利用率\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":18,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '140',
    '985',
    '160',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '20',
    'chart11',
    '8000',
    '{\"title\":\"在线结点数/结点率\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":18,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '155',
    '1440',
    '160',
    @version
);

-- ----------------------------
-- 服务器整体监控(计算资源消耗)
-- ----------------------------
INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"select sum(data) as data from template_1_crc_sum\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '50',
    'chart12',
    '8000',
    '{\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":40,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"unit\":{\"title\":\"GB\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":16,\"fontWeight\":\"normal\"}}',
    'false',
    '135',
    '75',
    '205',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"select * from template_1_crc_line\",\"x\":\"x\",\"y\":\"y\",\"legend\":\"legend\",\"chartType\":\"lineStacking\"}',
    'lineStacking',
    'false',
    '[]',
    '100',
    'chart13',
    '8000',
    '{\"title\":{\"text\":\"堆叠折线图\",\"left\":\"center\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"grid\":{\"top\":\"\",\"left\":\"10\",\"right\":\"10\",\"bottom\":\"\",\"containLabel\":true},\"legend\":{\"left\":\"1%\",\"top\":\"5%\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"tooltip\":{},\"dataset\":{\"source\":[[\"product\",\"1\",\"2\"],[\"01/01\",\"30\",\"30\"],[\"02/01\",\"160\",\"80\"],[\"03/01\",\"80\",\"20\"],[\"04/01\",\"90\",\"120\"],[\"05/01\",\"20\",\"70\"],[\"06/01\",\"190\",\"100\"],[\"07/01\",\"100\",\"70\"],[\"08/01\",\"150\",\"90\"],[\"09/01\",\"90\",\"30\"],[\"10/01\",\"60\",\"50\"]]},\"xAxis\":{\"name\":\"\",\"type\":\"category\",\"boundaryGap\":true,\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":true,\"textStyle\":{\"color\":\"#fff\"},\"rotate\":0},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"yAxis\":{\"name\":\"\",\"type\":\"value\",\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":false,\"textStyle\":{\"color\":\"#fff\"}},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"splitArea\":{\"show\":false,\"areaStyle\":{\"color\":[\"rgba(250,250,250,0.3)\",\"rgba(200,200,200,0.3)\"]}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"series\":[{\"type\":\"line\",\"showSymbol\":false,\"smooth\":true},{\"type\":\"line\",\"showSymbol\":false,\"lineStyle\":{\"type\":\"dashed\"},\"smooth\":true}],\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '225',
    '230',
    '160',
    @version
);

-- ----------------------------
-- 服务器整体监控（磁盘总空间/利用率）
-- ----------------------------
INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_tds_sum WHERE type = \'sum\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '40',
    'chart14',
    '8000',
    '{\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":40,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":false,\"unit\":{\"title\":\"TB\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":16,\"fontWeight\":\"normal\"}}',
    'false',
    '90',
    '530',
    '205',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '30',
    'chart15',
    '8000',
    '{\"title\":\"/\",\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":22,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '40',
    '617',
    '222',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_tds_sum WHERE type = \'ratio\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '35',
    'chart16',
    '8000',
    '{\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":32,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":true,\"unit\":{\"title\":\"%\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":16,\"fontWeight\":\"normal\"}}',
    'false',
    '80',
    '635',
    '213',
    @version
);
INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"select * from template_1_tds_line\",\"x\":\"x\",\"y\":\"y\",\"legend\":\"legend\",\"chartType\":\"lineStacking\"}',
    'lineStacking',
    'false',
    '[]',
    '100',
    'chart17',
    '8000',
    '{\"title\":{\"text\":\"堆叠折线图\",\"left\":\"center\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"grid\":{\"top\":\"\",\"left\":\"10\",\"right\":\"10\",\"bottom\":\"\",\"containLabel\":true},\"legend\":{\"left\":\"1%\",\"top\":\"5%\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"tooltip\":{},\"dataset\":{\"source\":[[\"product\",\"1\",\"2\"],[\"01/01\",\"90\",\"30\"],[\"02/01\",\"30\",\"80\"],[\"03/01\",\"80\",\"20\"],[\"04/01\",\"20\",\"180\"],[\"05/01\",\"50\",\"70\"],[\"06/01\",\"190\",\"120\"],[\"07/01\",\"170\",\"70\"],[\"08/01\",\"150\",\"90\"],[\"09/01\",\"40\",\"30\"],[\"10/01\",\"60\",\"50\"]]},\"xAxis\":{\"name\":\"\",\"type\":\"category\",\"boundaryGap\":true,\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":true,\"textStyle\":{\"color\":\"#fff\"},\"rotate\":0},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"yAxis\":{\"name\":\"\",\"type\":\"value\",\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":false,\"textStyle\":{\"color\":\"#fff\"}},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"splitArea\":{\"show\":false,\"areaStyle\":{\"color\":[\"rgba(250,250,250,0.3)\",\"rgba(200,200,200,0.3)\"]}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"series\":[{\"type\":\"line\",\"showSymbol\":false,\"smooth\":true},{\"type\":\"line\",\"showSymbol\":false,\"lineStyle\":{\"type\":\"dashed\"},\"smooth\":true}],\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '225',
    '715',
    '160',
    @version
);
-- ----------------------------
-- 服务器整体监控（内存总数/利用率）
-- ----------------------------
INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_tm_sum WHERE type = \'sum\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '50',
    'chart18',
    '8000',
    '{\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":40,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":false,\"unit\":{\"title\":\"TB\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":16,\"fontWeight\":\"normal\"}}',
    'false',
    '100',
    '985',
    '205',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '30',
    'chart19',
    '8000',
    '{\"title\":\"/\",\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":22,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '30',
    '1075',
    '222',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_tm_sum WHERE type = \'ratio\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '50',
    'chart20',
    '8000',
    '{\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":32,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":true,\"unit\":{\"title\":\"%\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":16,\"fontWeight\":\"normal\"}}',
    'false',
    '85',
    '1095',
    '213',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"select * from template_1_tm_line\",\"x\":\"x\",\"y\":\"y\",\"legend\":\"legend\",\"chartType\":\"lineStacking\"}',
    'lineStacking',
    'false',
    '[]',
    '100',
    'chart21',
    '8000',
    '{\"title\":{\"text\":\"堆叠折线图\",\"left\":\"center\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"grid\":{\"top\":\"\",\"left\":\"10\",\"right\":\"10\",\"bottom\":\"\",\"containLabel\":true},\"legend\":{\"left\":\"1%\",\"top\":\"5%\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"tooltip\":{},\"dataset\":{\"source\":[[\"product\",\"1\",\"2\"],[\"01/01\",\"16\",\"30\"],[\"02/01\",\"18\",\"80\"],[\"03/01\",\"80\",\"20\"],[\"04/01\",\"40\",\"120\"],[\"05/01\",\"20\",\"70\"],[\"06/01\",\"200\",\"100\"],[\"07/01\",\"90\",\"70\"],[\"08/01\",\"20\",\"90\"],[\"09/01\",\"90\",\"30\"],[\"10/01\",\"60\",\"50\"]]},\"xAxis\":{\"name\":\"\",\"type\":\"category\",\"boundaryGap\":true,\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":true,\"textStyle\":{\"color\":\"#fff\"},\"rotate\":0},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"yAxis\":{\"name\":\"\",\"type\":\"value\",\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":false,\"textStyle\":{\"color\":\"#fff\"}},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"splitArea\":{\"show\":false,\"areaStyle\":{\"color\":[\"rgba(250,250,250,0.3)\",\"rgba(200,200,200,0.3)\"]}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"series\":[{\"type\":\"line\",\"showSymbol\":false,\"smooth\":true},{\"type\":\"line\",\"showSymbol\":false,\"lineStyle\":{\"type\":\"dashed\"},\"smooth\":true}],\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '225',
    '1165',
    '160',
    @version
);
-- ----------------------------
-- 服务器整体监控（在线结点数/结点率）
-- ----------------------------
INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_onn_sum WHERE type = \'sum\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '50',
    'chart22',
    '8000',
    '{\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":40,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":false,\"unit\":{\"title\":\"个\",\"fontColor\":\"rgba(255, 255, 255, 0.71)\",\"fontSize\":16,\"fontWeight\":\"normal\"}}',
    'false',
    '100',
    '1440',
    '205',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"\",\"database\":\"\",\"fileName\":\"\",\"sql\":\"\",\"x\":\"\",\"name\":\"\"}',
    'titleText',
    'false',
    '[]',
    '30',
    'chart23',
    '8000',
    '{\"title\":\"/\",\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":22,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '35',
    '1550',
    '222',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_onn_sum WHERE type = \'ratio\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '40',
    'chart24',
    '8000',
    '{\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":32,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":true,\"unit\":{\"title\":\"%\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":16,\"fontWeight\":\"normal\"}}',
    'false',
    '75',
    '1570',
    '213',
    @version
);

INSERT INTO `chart_item` (
    `instance_id`,
    `item_chart_data`,
    `item_chart_type`,
    `item_choose`,
    `item_data`,
    `item_height`,
    `item_i`,
    `item_interval`,
    `item_option`,
    `item_refresh`,
    `item_width`,
    `item_x`,
    `item_y`,
    `item_version`
)
VALUES
(
    @instance_id,
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"select * from template_1_onn_line\",\"x\":\"x\",\"y\":\"y\",\"legend\":\"legend\",\"chartType\":\"lineStacking\"}',
    'lineStacking',
    'false',
    '[]',
    '100',
    'chart25',
    '8000',
    '{\"title\":{\"text\":\"堆叠折线图\",\"left\":\"center\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"grid\":{\"top\":\"\",\"left\":\"10\",\"right\":\"10\",\"bottom\":\"\",\"containLabel\":true},\"legend\":{\"left\":\"1%\",\"top\":\"5%\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"tooltip\":{},\"dataset\":{\"source\":[[\"product\",\"1\",\"2\"],[\"01/01\",\"30\",\"30\"],[\"02/01\",\"160\",\"80\"],[\"03/01\",\"80\",\"20\"],[\"04/01\",\"90\",\"120\"],[\"05/01\",\"20\",\"70\"],[\"06/01\",\"190\",\"100\"],[\"07/01\",\"100\",\"70\"],[\"08/01\",\"150\",\"90\"],[\"09/01\",\"90\",\"30\"],[\"10/01\",\"60\",\"50\"]]},\"xAxis\":{\"name\":\"\",\"type\":\"category\",\"boundaryGap\":true,\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":true,\"textStyle\":{\"color\":\"#fff\"},\"rotate\":0},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"yAxis\":{\"name\":\"\",\"type\":\"value\",\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":false,\"textStyle\":{\"color\":\"#fff\"}},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"splitArea\":{\"show\":false,\"areaStyle\":{\"color\":[\"rgba(250,250,250,0.3)\",\"rgba(200,200,200,0.3)\"]}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"series\":[{\"type\":\"line\",\"showSymbol\":false,\"smooth\":true},{\"type\":\"line\",\"showSymbol\":false,\"lineStyle\":{\"type\":\"dashed\"},\"smooth\":true}],\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '225',
    '1635',
    '160',
    @version
);
-- ----------------------------
-- MaxComputer任务总数
-- ----------------------------







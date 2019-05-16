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
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_mcj_sum WHERE type = \'sum\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '30',
    'chart26',
    '8000',
    '{\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":22,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":true,\"unit\":{\"title\":\"\",\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":12,\"fontWeight\":\"normal\"}}',
    'false',
    '105',
    '100',
    '360',
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
    'chart27',
    '8000',
    '{\"title\":\"同比\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":20,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '60',
    '550',
    '360',
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
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_mcj_sum WHERE type = \'year_on_tear\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '30',
    'chart28',
    '8000',
    '{\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":18,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":true,\"unit\":{\"title\":\"%\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":18,\"fontWeight\":\"normal\"}}',
    'false',
    '60',
    '610',
    '360',
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
    'chart29',
    '8000',
    '{\"title\":\"环比\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":20,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '60',
    '680',
    '360',
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
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_mcj_sum WHERE type = \'chain_ratio\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '30',
    'chart30',
    '8000',
    '{\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":18,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":true,\"unit\":{\"title\":\"%\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":18,\"fontWeight\":\"normal\"}}',
    'false',
    '60',
    '740',
    '360',
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
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"select * from template_1_mcj_line\",\"x\":\"x\",\"y\":\"y\",\"legend\":\"legend\",\"chartType\":\"lineStacking\"}',
    'lineStacking',
    'false',
    '[]',
    '275',
    'chart31',
    '8000',
    '{\"title\":{\"text\":\"堆叠折线图\",\"left\":\"center\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"grid\":{\"top\":\"10\",\"left\":\"10\",\"right\":\"10\",\"bottom\":\"10\",\"containLabel\":true},\"legend\":{\"left\":\"1%\",\"top\":\"5%\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"tooltip\":{},\"dataset\":{\"source\":[[\"product\",\"1\",\"2\"],[\"12/01\",\"60\",\"80\"],[\"02/01\",\"50\",\"80\"],[\"03/01\",\"60\",\"80\"],[\"04/01\",\"60\",\"150\"],[\"05/01\",\"100\",\"90\"],[\"06/01\",\"70\",\"130\"],[\"07/01\",\"150\",\"50\"],[\"08/01\",\"70\",\"20\"],[\"09/01\",\"20\",\"90\"],[\"10/01\",\"55\",\"130\"],[\"11/01\",\"220\",\"40\"],[\"01/01\",\"100\",\"70\"]]},\"xAxis\":{\"name\":\"\",\"type\":\"category\",\"boundaryGap\":true,\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":false,\"textStyle\":{\"color\":\"#fff\"},\"rotate\":0},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"yAxis\":{\"name\":\"\",\"type\":\"value\",\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":true,\"textStyle\":{\"color\":\"#fff\"}},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"splitArea\":{\"show\":false,\"areaStyle\":{\"color\":[\"rgba(250,250,250,0.3)\",\"rgba(200,200,200,0.3)\"]}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"series\":[{\"type\":\"line\",\"showSymbol\":false,\"smooth\":true},{\"type\":\"line\",\"showSymbol\":false,\"lineStyle\":{\"type\":\"dashed\"},\"smooth\":true}],\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '775',
    '45',
    '405',
    @version
);
-- ----------------------------
-- 任务情况
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
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"select name,value from template_1_jt_pie\",\"name\":\"name\",\"value\":\"value\",\"chartType\":\"pieRing\"}',
    'pieRing',
    'false',
    '[]',
    '250',
    'chart32',
    '8000',
    '{\"lunbo\":\"0\",\"title\":{\"text\":\"任务类型分布\",\"left\":\"center\",\"top\":\"bottom\",\"textStyle\":{\"color\":\"#fff\"},\"show\":true},\"tooltip\":{\"trigger\":\"item\",\"formatter\":\"\"},\"color\":[\"#5098c7\",\"#f79665\",\"#83c094\",\"#fdd869\"],\"legend\":{\"show\":false,\"orient\":\"vertical\",\"top\":0,\"left\":0,\"data\":[\"TYPE_1\",\"TYPE_2\",\"TYPE_3\",\"TYPE_4\",\"TYPE_5\"],\"textStyle\":{\"color\":\"#fff\"}},\"series\":[{\"name\":\"\",\"type\":\"pie\",\"radius\":[\"50%\",\"70%\"],\"center\":[\"50%\",\"40%\"],\"avoidLabelOverlap\":false,\"label\":{\"normal\":{\"show\":false,\"position\":\"center\"},\"emphasis\":{\"show\":true,\"textStyle\":{\"fontSize\":\"15\",\"fontWeight\":\"bold\"},\"formatter\":\"\"}},\"labelLine\":{\"normal\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"},\"smooth\":0.2,\"length\":10,\"length2\":20}},\"data\":[{\"name\":\"TYPE_1\",\"value\":\"32\"},{\"name\":\"TYPE_2\",\"value\":\"54\"},{\"name\":\"TYPE_3\",\"value\":\"45\"},{\"name\":\"TYPE_4\",\"value\":\"12\"},{\"name\":\"TYPE_5\",\"value\":\"40\"}]}],\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '250',
    '900',
    '380',
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
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"select name,value from template_1_js_pie\",\"name\":\"name\",\"value\":\"value\",\"chartType\":\"pieRing\"}',
    'pieRing',
    'false',
    '[]',
    '250',
    'chart33',
    '8000',
    '{\"lunbo\":\"0\",\"title\":{\"text\":\"成功任务比例\",\"left\":\"center\",\"top\":\"bottom\",\"textStyle\":{\"color\":\"#fff\"},\"show\":true},\"tooltip\":{\"trigger\":\"item\",\"formatter\":\"\"},\"color\":[\"#5098c7\",\"#f79665\",\"#83c094\",\"#fdd869\"],\"legend\":{\"show\":false,\"orient\":\"vertical\",\"top\":0,\"left\":0,\"data\":[\"TYPE_1\",\"TYPE_2\"],\"textStyle\":{\"color\":\"#fff\"}},\"series\":[{\"name\":\"\",\"type\":\"pie\",\"radius\":[\"50%\",\"70%\"],\"center\":[\"50%\",\"40%\"],\"avoidLabelOverlap\":false,\"label\":{\"normal\":{\"show\":false,\"position\":\"center\"},\"emphasis\":{\"show\":true,\"textStyle\":{\"fontSize\":\"15\",\"fontWeight\":\"bold\"},\"formatter\":\"\"}},\"labelLine\":{\"normal\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"},\"smooth\":0.2,\"length\":10,\"length2\":20}},\"data\":[{\"name\":\"TYPE_1\",\"value\":\"82\"},{\"name\":\"TYPE_2\",\"value\":\"18\"}]}],\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '250',
    '1210',
    '380',
    @version
);
-- ----------------------------
-- 表平均容量
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
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_tac_sum WHERE type = \'sum1\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '55',
    'chart34',
    '8000',
    '{\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":40,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":true,\"unit\":{\"title\":\"GB\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":16,\"fontWeight\":\"normal\"}}',
    'false',
    '160',
    '1550',
    '360',
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
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"SELECT * FROM template_1_tac_sum WHERE type = \'sum2\'\",\"data\":\"data\",\"chartType\":\"counter\"}',
    'counter',
    'false',
    '[]',
    '55',
    'chart35',
    '8000',
    '{\"fontColor\":\"rgba(255,255,255,1)\",\"fontSize\":40,\"fontWeight\":\"normal\",\"textAlign\":\"left\",\"backgroundColor\":\"rgba(255,255,255,0)\",\"thousandth\":true,\"unit\":{\"title\":\"GB\",\"fontColor\":\"rgba(255, 255, 255, 0.7)\",\"fontSize\":16,\"fontWeight\":\"normal\"}}',
    'false',
    '120',
    '1750',
    '360',
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
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"select * from template_1_tac_histogram\",\"x\":\"x\",\"y\":\"y\",\"legend\":\"无\",\"chartType\":\"histogramStacking\"}',
    'histogramStacking',
    'false',
    '{}',
    '250',
    'chart36',
    '8000',
    '{\"title\":{\"text\":\"堆叠柱状图\",\"left\":\"center\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"grid\":{\"left\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"containLabel\":true,\"top\":\"0\"},\"legend\":{\"left\":\"1%\",\"top\":\"5%\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"tooltip\":{},\"dataset\":{\"source\":[[\"product\"],[\"2月\",\"235\"],[\"3月\",\"156\"],[\"4月\",\"123\"],[\"5月\",\"423\"],[\"6月\",\"456\"],[\"7月\",\"356\"],[\"8月\",\"456\"],[\"9月\",\"853\"],[\"10月\",\"456\"],[\"11月\",\"456\"],[\"12月\",\"456\"]]},\"xAxis\":{\"name\":\"\",\"type\":\"category\",\"boundaryGap\":true,\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":true,\"textStyle\":{\"color\":\"#fff\"},\"rotate\":0,\"fontSize\":\"8px\"},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"yAxis\":{\"name\":\"\",\"type\":\"value\",\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":false,\"textStyle\":{\"color\":\"#fff\"}},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"splitArea\":{\"show\":false,\"areaStyle\":{\"color\":[\"rgba(250,250,250,0.3)\",\"rgba(200,200,200,0.3)\"]}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#FFFFFF\"}}},\"series\":[{\"type\":\"bar\",\"barWidth\":\"50%\"}],\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '350',
    '1530',
    '425',
    @version
);
-- ----------------------------
-- 表存储容量
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
    '{\"dataSourceType\":\"DataBase\",\"database\":9,\"sql\":\"select * from template_1_tsc_histogram\",\"value\":\"y\",\"name\":\"x\",\"chartType\":\"histogramGradientHorizontal\"}',
    'histogramGradientHorizontal',
    'false',
    '{}',
    '280',
    'chart37',
    '8000',
    '{\"title\":{\"text\":\"水平柱状图\",\"left\":\"center\",\"textStyle\":{\"color\":\"#fff\"},\"show\":false},\"tooltip\":{\"trigger\":\"axis\",\"axisPointer\":{\"type\":\"shadow\"}},\"grid\":{\"left\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"containLabel\":true,\"top\":\"0\"},\"legend\":{\"show\":true,\"orient\":\"vertical\",\"data\":[],\"top\":\"0\",\"left\":\"0\",\"textStyle\":{\"color\":\"#ffffff\"}},\"xAxis\":{\"data\":[],\"name\":\"\",\"type\":\"value\",\"axisLabel\":{\"show\":false,\"textStyle\":{\"color\":\"#fff\"}},\"axisTick\":{\"show\":false},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}}},\"yAxis\":{\"name\":\"\",\"type\":\"category\",\"axisTick\":{\"show\":false},\"axisLabel\":{\"show\":true,\"textStyle\":{\"color\":\"#fff\"}},\"axisLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"splitLine\":{\"show\":false,\"lineStyle\":{\"color\":\"#ffffff\"}},\"data\":[\"上海\",\"深证\",\"合肥\",\"成都\",\"安徽\",\"北京\",\"杭州\",\"长沙\"]},\"series\":{\"name\":\"\",\"type\":\"bar\",\"barWidth\":\"50%\",\"data\":[23,13,2,9,5,10,14,24]},\"backgroundColor\":\"rgba(255,255,255,0)\"}',
    'false',
    '385',
    '40',
    '775',
    @version
);








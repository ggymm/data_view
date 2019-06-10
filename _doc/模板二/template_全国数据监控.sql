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
    '2019-05-26 16:44:06',
    '1',
    '2019-05-26 16:44:06',
    '1',
    '1',
    '全国数据监控.png',
    '86bd4353\\8ac4d591\\30a605ad\\44c8302b',
    '252032'
);

-- SET @instance_background_img = @@IDENTITY;
SET @instance_background_img = 7;

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
    '2019-05-26 16:44:24',
    '1',
    '2019-05-26 16:44:59',
    '1',
    '1',
    '模板二',
    '#263546',
    @instance_background_img,
    '1080',
    '1920',
    @version,
    ''
);
# 创建产品表
CREATE TABLE product(
	id VARCHAR(50) NOT NULL COMMENT '产品编号',
	name VARCHAR(50) NOT NULL COMMENT '产品名称',
	threshold_amout DECIMAL(15,3) NOT NULL COMMENT '起投金额',
	step_amout DECIMAL(15,3) NOT NULL COMMENT '投资步长',
	lock_term SMALLINT NOT NULL COMMENT '锁定期,天',
	reward_rate DECIMAL NOT NULL COMMENT '收益率,0-100,百分比值',
	status VARCHAR(20) NOT NULL COMMENT '状态,AUDITING:审核中;IN_SELL:销售中;LOCKED:暂停销售,FINISHED:已结束',
	memo VARCHAR(200) COMMENT '备注',
	create_at DATETIME COMMENT '创建时间',
	create_user VARCHAR(20) COMMENT '创建者',
	update_at DATETIME COMMENT '更新时间',
	update_user VARCHAR(20) COMMENT '更新者',
	PRIMARY KEY(id)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
# (1) 创建临时R缓存环境--------------------------------------------------
tempdir <- function() #"E:\\Rtemp"# 修改为提前在电脑C盘之外的其他硬盘的路径
unlockBinding("tempdir", baseenv())
utils::assignInNamespace("tempdir", tempdir, ns="base", envir=baseenv())
assign("tempdir", tempdir, baseenv())
lockBinding("tempdir", baseenv())

# (2) 设置灵活路径地址--------------------------------------------------
library(rstudioapi) # 读取灵活路径
dir <- dirname(rstudioapi::getActiveDocumentContext()$path) # 设置工作路径
setwd(dir)

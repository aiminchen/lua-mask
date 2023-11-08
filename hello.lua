local apk_path = "/Users/nana/workspace/android/OneSports/app/release/1"
local api_token = "1ebfa3cdf87b039ceb0217aa6677b7c9"

print("APK 路径-->" .. apk_path)
print("API_TOKEN-->" .. api_token)

-- ============ fir上传 ============

-- fir-cli 使用 Ruby 构建, 无需编译, 只安装相应 gem 即可
-- 查看ruby版本 需要 > 1.9.3

os.execute("ruby -v")

print("登录fir")

-- os.execute("fir login " .. api_token)

-- 查看fir的登录信息
os.execute("fir me")

-- fir打包上传
local function firUpload(apkPath, appId, apiToken)
	local _, err = io.open(apkPath, "rb")
	if err == nil then
		print("开始上传到fir")
		os.execute("fir publish " .. apk_path)
	else
		print("指定的文件目录或者文件不存在！！！")
	end
end

firUpload(apk_path)

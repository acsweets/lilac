import 'package:flutter/material.dart';

class GenMessageAction extends StatelessWidget {
  final VoidCallback onGen;
  const GenMessageAction({super.key, required this.onGen});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Text(
          '使用方式:\n1. 在 iconfont.cn 挑选图标，加入项目，下载压缩包。\n2. 选择 Flutter 项目地址，配置资源、产物文件位置。\n3. 点击生成代码按钮，即可生成相关代码。',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0, shape: const StadiumBorder()),
            onPressed: onGen,
            child: const Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 4,
              children: [
                Text(
                  '生成代码',
                  style: TextStyle(height: 1.1, fontSize: 12),
                ),
              ],
            )),
      ],
    );
  }
}

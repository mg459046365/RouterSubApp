//
//  RouterSubAppController.swift
//  RouterSubApp
//
//  Created by Beryter on 2020/10/17.
//

import UIKit

class RouterSubAppController: UIViewController {
    var proteryName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let lb = UILabel()
        lb.text = "我是子项目视图-\(proteryName ?? "")"
        lb.sizeToFit()
        lb.textColor = .red
        lb.frame = CGRect(x: (view.frame.width - lb.frame.width) / 2, y: 200, width: lb.frame.width, height: lb.frame.width)
        view.addSubview(lb)

        let button = UIButton(type: .custom)
        button.frame = CGRect(x: (view.frame.width - 80) / 2, y: lb.frame.maxY + 50, width: 80, height: 50)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.cornerRadius = 4
        button.setTitle("关闭", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(nil, action: #selector(close), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc private func close() {
        if let _ = presentingViewController {
            dismiss(animated: true, completion: nil)
            return
        }
        navigationController?.popViewController(animated: true)
    }
}

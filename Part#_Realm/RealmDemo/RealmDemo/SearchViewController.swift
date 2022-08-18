//
//  SearchViewController.swift
//  RealmDemo
//
//  Created by 유영재 on 2022/08/18.
//

import UIKit
import RealmSwift

class SearchViewController: UIViewController {

    // Realm 파일에 접근하는 상수 localRealm
    let localRealm = try! Realm()
    
    // Realm에서 읽어온 데이터를 담을 배열 tasks
    var tasks : Results<UserDiary>!
    
    @IBOutlet var searchTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 배열의 Realm의 데이터 초기화
        tasks = localRealm.objects(UserDiary.self)
        print(tasks)
        
    }
    
    private func assignDelegate() {
        searchTableView.delegate = self
        searchTableView.dataSource = self
    }
    
    private func registerXib() {
        let nibName = UINib(nibName: "SearchTableViewCell", bundle: nil)
        searchTableView.register(nibName, forCellReuseIdentifier: "SearchTableViewCell")
    }
}

extension SearchViewController: UITableViewDelegate {
    
}

extension SearchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = searchTableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell") as? SearchTableViewCell else {
            return UITableViewCell()
        }
        // 테이블 뷰에 데이터 표현
        let row = tasks[indexPath.row]
        cell.contentLabel.text = row.content
        cell.dateLabel.text = "\(row.writeDate)"
        
        return cell
    }
}

import UIKit

// 1
class MyData {
    var name: String
    var country: String
    
    init(name: String, country: String) {
        self.name = name
        self.country = country
    }
}

func someFunc1(data: MyData) {
    data.name = "name is " + data.name
    data.country = "country is " + data.country
    print(data.name + data.country)
}

func someFunc2(data: MyData) {
    data.name = "name:" + data.name
    data.country = "country:" + data.country
    print(data.name + data.country)
}

// 2
struct NewMyData1 {
    private var _name: String
    private var _country: String

    var name: String {
        get { return _name }
        set { _name = newValue }
    }
    var country: String {
        get { return _country }
        set { _country = newValue }
    }

    init(myData: MyData) {
        self._name = myData.name
        self._country = myData.country
    }
}

// 3
struct NewMyData2 {
    private var _title: String
    private var _country: String
    
    var name: String {
        get { return _title }
        set { _title = newValue }
    }
    var country: String {
        get { return _country }
        set { _country = newValue }
    }
    
    init(myData: MyData) {
        self._title = myData.name
        self._country = myData.country
    }
    
    init(title: String, country: String) {
        self._title = title
        self._country = country
    }
}


// ------------------------------------------------------------------- //

struct RefactorMyData {
    let name: String
    let country: String
    
    init(name: String, country: String) {
        self.name = name
        self.country = country
    }
}

func someFunc1_refactor(data: RefactorMyData) {
    let data = RefactorMyData(
        name: "name is " + data.name,
        country: "country is " + data.country
    )
    print(data.name + data.country)
}

func someFunc2_refactor(data: RefactorMyData) {
    let data = RefactorMyData(
        name: "name:" + data.name,
        country: "country:" + data.country
    )
    print(data.name + data.country)
}

const base = {
    get() {
        return {
            url : "http://localhost:8080/ssmrbzh3/",
            name: "ssmrbzh3",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmrbzh3/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "学习自律养成小程序"
        } 
    }
}
export default base

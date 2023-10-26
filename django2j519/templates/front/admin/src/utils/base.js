const base = {
    get() {
        return {
            url : "http://localhost:8080/django2j519/",
            name: "django2j519",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "酒店点餐系统"
        } 
    }
}
export default base

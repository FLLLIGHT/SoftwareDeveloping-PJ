package fudan.sd.project.entity;

public class Page {
    private int pageNo;
    private int totalPages;
    private int pageSize;

    public Page(int pageNo, int totalPages, int pageSize) {
        if(pageNo==0){
            pageNo = 1;
        }
        if(pageNo>totalPages){
            pageNo = totalPages;
        }
        this.pageNo = pageNo;
        this.totalPages = totalPages;
        this.pageSize = pageSize;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}

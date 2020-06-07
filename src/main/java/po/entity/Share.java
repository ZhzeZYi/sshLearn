package po.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Share {

    @Id
    private Integer id;
    private String name;
    private String catalog;
    private String develeopType;
    private String theme;
    private String describe;
    private String label;
    private String sharingType;
    private String filePath;

    public Share() {

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCatalog() {
        return catalog;
    }

    public void setCatalog(String catalog) {
        this.catalog = catalog;
    }

    public String getDeveleopType() {
        return develeopType;
    }

    public void setDeveleopType(String develeopType) {
        this.develeopType = develeopType;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getSharingType() {
        return sharingType;
    }

    public void setSharingType(String sharingType) {
        this.sharingType = sharingType;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }
}

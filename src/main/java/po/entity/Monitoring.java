package po.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Monitoring {

    @Id
    private Integer dataID;
    private String taskTime;
    private String name;
    private Integer dispatchID;
    private Integer jobID;
    private String taskTypes;
    private String executionCycle;
    private String state;
    private Integer maxNumberRetries;
    private Integer currentNumberRetries;
    private String startExecutionTime;
    private String endExecutionTime;

    public Monitoring() {
    }

    public Integer getDataID() {
        return dataID;
    }

    public void setDataID(Integer dataID) {
        this.dataID = dataID;
    }

    public String getTaskTime() {
        return taskTime;
    }

    public void setTaskTime(String taskTime) {
        this.taskTime = taskTime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getDispatchID() {
        return dispatchID;
    }

    public void setDispatchID(Integer dispatchID) {
        this.dispatchID = dispatchID;
    }

    public Integer getJobID() {
        return jobID;
    }

    public void setJobID(Integer jobID) {
        this.jobID = jobID;
    }

    public String getTaskTypes() {
        return taskTypes;
    }

    public void setTaskTypes(String taskTypes) {
        this.taskTypes = taskTypes;
    }

    public String getExecutionCycle() {
        return executionCycle;
    }

    public void setExecutionCycle(String executionCycle) {
        this.executionCycle = executionCycle;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Integer getMaxNumberRetries() {
        return maxNumberRetries;
    }

    public void setMaxNumberRetries(Integer maxNumberRetries) {
        this.maxNumberRetries = maxNumberRetries;
    }

    public Integer getCurrentNumberRetries() {
        return currentNumberRetries;
    }

    public void setCurrentNumberRetries(Integer currentNumberRetries) {
        this.currentNumberRetries = currentNumberRetries;
    }

    public String getStartExecutionTime() {
        return startExecutionTime;
    }

    public void setStartExecutionTime(String startExecutionTime) {
        this.startExecutionTime = startExecutionTime;
    }

    public String getEndExecutionTime() {
        return endExecutionTime;
    }

    public void setEndExecutionTime(String endExecutionTime) {
        this.endExecutionTime = endExecutionTime;
    }
}

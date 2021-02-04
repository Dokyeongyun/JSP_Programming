package Action;

public class ActionForward {
    private boolean isRedirect; // true -> redirect / false -> forward
    private String nextPath; // 이동할 경로

    public boolean isRedirect() { return isRedirect; }
    public void setRedirect(boolean redirect) { isRedirect = redirect; }
    public String getNextPath() { return nextPath; }
    public void setNextPath(String nextPath) { this.nextPath = nextPath; }
}

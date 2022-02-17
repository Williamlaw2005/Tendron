public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        Tendril a = new Tendril(len, Math.random()*2*PI, x, y);
        a.show();
        Tendril b = new Tendril(len, Math.random()*2*(2*PI)-2*PI, x, y);
        b.show();
        Tendril c = new Tendril(len, Math.random()*3*(2*PI)-2*(2*PI), x, y);
        c.show();
        Tendril d = new Tendril(len, Math.random()*4*(2*PI)-3*(2*PI), x, y);
        d.show();
        Tendril e = new Tendril(len, Math.random()*5*(2*PI)-4*(2*PI), x, y);
        e.show();
        Tendril f = new Tendril(len, Math.random()*6*(2*PI)-5*(2*PI), x, y);
        f.show();
        Tendril g = new Tendril(len, Math.random()*7*(2*PI)-6*(2*PI), x, y);
        g.show();       
    }
}

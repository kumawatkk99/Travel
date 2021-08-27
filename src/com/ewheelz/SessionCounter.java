package com.ewheelz;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionCounter
    implements HttpSessionListener
{

    public SessionCounter()
    {
    }

    public void sessionCreated(HttpSessionEvent httpsessionevent)
    {
        activeSessions++;
    }

    public void sessionDestroyed(HttpSessionEvent httpsessionevent)
    {
        if(activeSessions > 0)
            activeSessions--;
    }

    public static int getActiveSessions()
    {
        return activeSessions;
    }

    private static int activeSessions = 0;

}
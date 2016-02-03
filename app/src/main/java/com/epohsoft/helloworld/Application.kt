package com.epohsoft.helloworld

import com.google.android.gms.analytics.GoogleAnalytics
import com.google.android.gms.analytics.Tracker

class Application : android.app.Application() {

    lateinit var tracker: Tracker

    override fun onCreate() {
        super.onCreate()

        val analytics = GoogleAnalytics.getInstance(this)
        tracker = analytics.newTracker(R.xml.app_tracker)
        tracker.enableAdvertisingIdCollection(true)
    }
}

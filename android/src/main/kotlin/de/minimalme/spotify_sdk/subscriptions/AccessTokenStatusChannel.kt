package de.minimalme.spotify_sdk.subscriptions

import android.util.Log
import com.google.gson.Gson
import com.google.gson.annotations.SerializedName
import io.flutter.plugin.common.EventChannel
import kotlinx.event.SetEvent

class AccessTokenStatusChannel(private val accesstokenStatusStream: SetEvent<AccessTokenEvent>) : EventChannel.StreamHandler {

    data class AccessTokenEvent(
            @SerializedName("token_changed") val token_changed: Boolean,
            @SerializedName("message" )val message: String,
            @SerializedName("errorCode") val errorCode: String?,
            @SerializedName("errorDetails") val errorDetails: Any?
            )

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        accesstokenStatusStream += { event ->
            // not error
            events?.success(Gson().toJson(event))
        }
    }

    override fun onCancel(arguments: Any?) {
    }
}
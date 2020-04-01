import ballerina/http;

http:ListenerConfiguration config = {
    secureSocket: {
        keyFile: "/etc/letsencrypt/live/www.bashi.tk/privkey.pem",
	    certFile: "/etc/letsencrypt/live/www.bashi.tk/fullchain.pem"
    }
};

service hello on new http:Listener(443) {
    resource function hi(http:Caller caller, http:Request request) {
        var response = caller->respond("hello");
    }
}
#!/bin/bash
#try {
# PackageInfo info = getPackageManager().getPackageInfo("com.facebook.scrumptious", PackageManager.GET_SIGNATURES);
# for (Signature signature : info.signatures) {
#    MessageDigest md = MessageDigest.getInstance("SHA");
#    md.update(signature.toByteArray());
#    Log.e("MY KEY HASH:", Base64.encodeToString(md.digest(), Base64.DEFAULT));
# }
#}
# catch (NameNotFoundException e) {}
# catch (NoSuchAlgorithmException e) {}
keytool -exportcert -alias gert -keystore ../gert.keystore | openssl sha1 -binary | openssl base64
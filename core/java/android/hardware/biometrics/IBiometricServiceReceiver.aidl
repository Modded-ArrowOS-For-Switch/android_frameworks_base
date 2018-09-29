/*
 * Copyright (C) 2018 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package android.hardware.biometrics;

/**
 * Communication channel from the BiometricService back to BiometricPrompt.
 * @hide
 */
oneway interface IBiometricServiceReceiver {
    void onAuthenticationSucceeded(long deviceId);
    void onAuthenticationFailed(long deviceId);
    void onError(long deviceId, int error, String message);
    void onAcquired(long deviceId, int acquiredInfo, String message);
}

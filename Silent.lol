Silent.lol Feature public static void StareAtNearby()
        {
            GorillaTagger.Instance.offlineVRRig.headConstraint.LookAt(GetClosestVRRig().headMesh.transform.position);            Download here:
        }

        public static void EnableFloatingRig()
        {
            offsetH = GorillaTagger.Instance.offlineVRRig.head.trackingPositionOffset;
        }

        public static void FloatingRig()
        {
            GorillaTagger.Instance.offlineVRRig.head.trackingPositionOffset = offsetH + new Vector3(0f, 0.65f + (Mathf.Sin((float)Time.frameCount / 40f) * 0.2f), 0f);
        }

        public static void DisableFloatingRig()
        {
            GorillaTagger.Instance.offlineVRRig.head.trackingPositionOffset = offsetH;
        }

        public static void Bees()
        {
            GorillaTagger.Instance.offlineVRRig.enabled = false;
            if (Time.time > beesDelay)
            {
                VRRig target = GetRandomVRRig(false);//GorillaParent.instance.vrrigs[UnityEngine.Random.Range(0, GorillaParent.instance.vrrigs.Count - 1)];

                GorillaTagger.Instance.offlineVRRig.transform.position = target.transform.position + new Vector3(0f, 1f, 0f);
                try
                {
                    GorillaTagger.Instance.myVRRig.transform.position = target.transform.position + new Vector3(0f, 1f, 0f);
                } catch { }

                GorillaTagger.Instance.offlineVRRig.leftHand.rigTarget.transform.position = target.transform.position;
                GorillaTagger.Instance.offlineVRRig.rightHand.rigTarget.transform.position = target.transform.position;

                beesDelay = Time.time + 0.777f;
            }
        } 
public static void RandomSpazHead()
        {
            if (headspazType)
            {
                SpazHead();
                if (Time.time > headspazDelay)
                {
                    headspazType = false;
                    headspazDelay = Time.time + UnityEngine.Random.Range(1000f,4000f)/1000f;
                }
            } else
            {

}

public static void SlowAll()
        {
            if (Time.time > kgDebounce)
            {
                /foreach (Photon.Realtime.Player player in PhotonNetwork.PlayerList)
                {
                GorillaGameManager.instance.FindVRRigForPlayer(player).RPC("SetTaggedTime", player, null);/
                BetaSetStatus(0, new RaiseEventOptions { Receivers = ReceiverGroup.Others });
                RPCProtection();
                kgDebounce = Time.time + 1f;
                //}
            }
        }

public static void VibrateAll()
        {
            if (Time.time > kgDebounce)
            {
                /foreach (Photon.Realtime.Player player in PhotonNetwork.PlayerList)
                {
                GorillaTagger.Instance.myVRRig.RPC("SetJoinTaggedTime", player, null);/
                BetaSetStatus(1, new RaiseEventOptions { Receivers = ReceiverGroup.Others });
                RPCProtection();
                kgDebounce = Time.time + 0.5f;
                //}
            }
        }
public static void BlindAll()
        {
            VRRig randomRig = GetRandomVRRig(false);

            Vector3 startpos = randomRig.headMesh.transform.position + (randomRig.headMesh.transform.forward * 0.5f);
            Vector3 charvel = Vector3.zero;

            BetaFireProjectile("WaterBalloon", startpos, charvel, new Color32(0, 0, 0, 255));
        } public static void BecomePBBV()
        {
            ChangeName("PBBV");
            ChangeColor(new Color32(230, 127, 102, 255));
        }

        public static void BecomeJ3VU()
        {
            ChangeName("J3VU");
            ChangeColor(Color.green);
        }

        public static void BecomeECHO()
        {
            ChangeName("ECHO");
            ChangeColor(new Color32(0, 150, 255, 255));
        }

        public static void BecomeDAISY09()
        {
            ChangeName("DAISY09");
            ChangeColor(new Color32(255, 81, 231, 255));
        }

        public static void BecomeHiddenOnLeaderboard() {
            ChangeName("__");
            ChangeColor(new Color32(0, 53, 2, 255));
        } public static void RemoveName()
        {
            ChangeName("__");
        }

        public static void SetNameToSTATUE()
        {
            ChangeName("STATUE");
        }

        public static void SetNameToRUN()
        {
            ChangeName("RUN");
        }

        public static void SetNameToSilent.lolOnTop()
        {
            ChangeName("Silent.lolOnTop");
        }

        public static void SetNameToBEHINDYOU()
        {
            ChangeName("BEHINDYOU");
        }

        public static void PBBVNameCycle()
        {
            if (Time.time > nameCycleDelay)
            {
                nameCycleIndex++;
                if (nameCycleIndex > 3)
                {
                    nameCycleIndex = 1;
                }

                if (nameCycleIndex == 1)
                {
                    ChangeName("PBBV");
                }
                if (nameCycleIndex == 2)
                {
                    ChangeName("IS");
                }
                if (nameCycleIndex == 3)
                {
                    ChangeName("HERE");
                }

                nameCycleDelay = Time.time + 1f;
            }
        }

public static void StrobeColor()
        {
            if (Time.time > colorChangerDelay)
            {
                colorChangerDelay = Time.time + 0.1f;
                strobeColor = !strobeColor;
                ChangeColor(new Color(strobeColor ? 1 : 0, strobeColor ? 1 : 0, strobeColor ? 1 : 0));
            }
        }


public static void RainbowColor()
        {
            if (Time.time > colorChangerDelay)
            {
                colorChangerDelay = Time.time + 0.1f;
                float h = (Time.frameCount / 180f) % 1f;
                ChangeColor(UnityEngine.Color.HSVToRGB(h, 1f, 1f));
            }
        }

public static void HardRainbowColor()
        {
            if (Time.time > colorChangerDelay)
            {
                colorChangerDelay = Time.time + 1f;
                colorChangeType++;
                if (colorChangeType > 3)
                {
                    colorChangeType = 0;
                }
                Color[] colors = new Color[]
                {
                    Color.red,
                    Color.green,
                    Color.blue,
                    Color.magenta
                };

                ChangeColor(colors[colorChangeType]);
            }
        }

public static void NegativeColor()
        {
            PlayerPrefs.SetFloat("redValue", -2147483648);
            PlayerPrefs.SetFloat("greenValue", -2147483648);
            PlayerPrefs.SetFloat("blueValue", -2147483648);

            GorillaTagger.Instance.UpdateColor(-2147483648, -2147483648, -2147483648);
            PlayerPrefs.Save();
            GorillaTagger.Instance.myVRRig.RPC("InitializeNoobMaterial", RpcTarget.All, new object[] { -2147483648, -2147483648, -2147483648, false });
            RPCProtection();
        } public static void LagAllv2()
        {
            LoadBalancingClient loadBalancingClient = PhotonNetwork.CurrentRoom.LoadBalancingClient;
            byte b = 207;
            Hashtable hashtable = new Hashtable();
            hashtable[0] = -1;
            loadBalancingClient.OpRaiseEvent(b, hashtable, null, SendOptions.SendReliable);

            RPCProtection5();
        }
    }
} public static void CrashAll()
{
    foreach (Player p in PhotonNetwork.PlayerList)
    {
        var PlayerInThisRoom = PhotonNetwork.PlayerList;
       PlayerInThisRoom.Clear();
    }
} public static void Pregnant()
{
    VRRig vrrig = GorillaTagger.Instance.offlineVRRig;
    UnityEngine.Color vrrigcolor = vrrig.playerColor;
    GameObject belly = GameObject.CreatePrimitive(UnityEngine.PrimitiveType.Sphere);
    belly.transform.position = vrrig.transform.position + vrrig.transform.forward * 0.2f + Vector3.down * 0.3f;
    belly.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);
    belly.transform.LookAt(vrrig.transform.transform);
    belly.GetComponent<Renderer>().material = GorillaTagger.Instance.offlineVRRig.mainSkin.material;
    belly.GetComponent<Renderer>().material.color = GorillaTagger.Instance.offlineVRRig.mainSkin.material.color;
    Object.Destroy(belly, Time.deltaTime);
    Object.Destroy(belly.GetComponent<Collider>());
} public static void InfectEveryone()
        {
            bool flag = PhotonNetwork.InRoom || PhotonNetwork.InLobby;
            if (flag)
            {
                bool isMasterClient = PhotonNetwork.IsMasterClient;
                if (isMasterClient)
                {
                    foreach (Photon.Realtime.Player player in PhotonNetwork.PlayerListOthers)
                    {
                        UnityEngine.Object.FindObjectOfType<GorillaTagManager>().currentInfected.Add(player);
                    }
                }
                else
                {
                    foreach (VRRig vrrig in GorillaParent.instance.vrrigs)
                    {
                        bool flag2 = vrrig != GorillaTagger.Instance.offlineVRRig;
                        if (flag2)
                        {
                            bool flag3 = !vrrig.mainSkin.material.name.Contains("fected") && GorillaTagger.Instance.offlineVRRig.mainSkin.material.name.Contains("fected");
                            if (flag3)
                            {
                                GorillaTagger.Instance.offlineVRRig.enabled = false;
                                GorillaTagger.Instance.offlineVRRig.transform.position = vrrig.transform.position + new Vector3(0f, 1f, 0f);
                                GorillaTagger.Instance.myVRRig.transform.position = vrrig.transform.position + new Vector3(0f, 1f, 0f);
                                GorillaTagger.Instance.leftHandTransform.transform.position = vrrig.transform.position;
                                GorillaTagger.Instance.rightHandTransform.transform.position = vrrig.transform.position;
                            }
                            else
                            {
                                GorillaTagger.Instance.offlineVRRig.enabled = true;
                            }
                        }
                    }
                }
            }
        }
    }
} ```c#
GameObject.Find("Environment Objects/LocalObjects_Prefab/TreeRoom/TreeRoomInteractables/UI/motd").GetComponent<UnityEngine.UI.Text>().text = "Welcome to Silent.LOL made by Mercury X and Coconutman2";



GameObject.Find("Environment Objects/LocalObjects_Prefab/TreeRoom/TreeRoomInteractables/UI/motd/motdtext").GetComponent<UnityEngine.UI.Text>().text = "If you get banned we are not responsible that is you're own fault there is ban-appeals.";
``` public static void KickAll(Stump)(Priv)()
        {
            if (PhotonNetwork.InRoom && !PhotonNetwork.CurrentRoom.IsVisible)
            {
                PhotonNetworkController.Instance.friendIDList = new List<string>(GorillaComputer.instance.friendJoinCollider.playerIDsCurrentlyTouching);
                PhotonNetworkController.Instance.shuffler = UnityEngine.Random.Range(0, 99999999).ToString().PadLeft(8, '0');
                PhotonNetworkController.Instance.keyStr = UnityEngine.Random.Range(0, 99999999).ToString().PadLeft(8, '0');
                foreach (Photon.Realtime.Player player in PhotonNetwork.PlayerList)
                {
                    if (GorillaComputer.instance.friendJoinCollider.playerIDsCurrentlyTouching.Contains(player.UserId) && player != PhotonNetwork.LocalPlayer)
                    {
                        object[] groupJoinSendData = new object[2];
                        groupJoinSendData[0] = PhotonNetworkController.Instance.shuffler;
                        groupJoinSendData[1] = PhotonNetworkController.Instance.keyStr;
                        RaiseEventOptions raiseEventOptions = new RaiseEventOptions
                        {
                            TargetActors = new int[1] { player.ActorNumber }
                        };

                        object obj = groupJoinSendData;
                        object[] sendEventData = new object[3];
                        sendEventData[0] = PhotonNetwork.ServerTimestamp;
                        sendEventData[1] = (byte)4;
                        sendEventData[2] = groupJoinSendData;
                        PhotonNetwork.RaiseEvent(3, sendEventData, raiseEventOptions, SendOptions.SendUnreliable);
                        RPCProtection();
                    }
                }
                PhotonNetwork.SendAllOutgoingCommands();
                RPCProtection(); public static void BreakAudioAll()
        {
            if (rightTrigger > 0.5f)
            {
                GorillaTagger.Instance.myVRRig.RPC("PlayHandTap", RpcTarget.Others, new object[]{
                    111,
                    false,
                    999999f
                });
            }
        }
    }
} public static void FreezeGun()
        {
            RaycastHit hit = GorillaExtensions.GunTemplate(Update.GunLock);
            if (Input.instance.CheckButton(Input.ButtonType.trigger, false) && hit.collider.GetComponentInParent<VRRig>() != null)
            {
                if (PhotonNetwork.IsMasterClient && RigManager.CurrentGameMode() == "INFECTION")
                {
                    GorillaTagManager tagManager = GorillaGameManager.instance.GetComponent<GorillaTagManager>();
                    if (tagManager.currentInfected.Contains(RigManager.VRRigToPhotonView(hit.collider.GetComponentInParent<VRRig>()).Owner))
                    {
                        tagManager.currentInfected.Remove(RigManager.VRRigToPhotonView(hit.collider.GetComponentInParent<VRRig>()).Owner);
                        tagManager.UpdateInfectionState();
                        tagManager.AddInfectedPlayer(RigManager.VRRigToPhotonView(hit.collider.GetComponentInParent<VRRig>()).Owner);
                    }
                    else
                    {
                        tagManager.AddInfectedPlayer(RigManager.VRRigToPhotonView(hit.collider.GetComponentInParent<VRRig>()).Owner);
                        tagManager.currentInfected.Remove(RigManager.VRRigToPhotonView(hit.collider.GetComponentInParent<VRRig>()).Owner);
                        tagManager.UpdateInfectionState();
                    }
                }
            }
        } public static void BanGun()
        {
            if (rightGrab || Mouse.current.rightButton.isPressed)
            {
                Physics.Raycast(GorillaTagger.Instance.rightHandTransform.position, GorillaTagger.Instance.rightHandTransform.forward, out var Ray);
                if (shouldBePC)
                {
                    Ray ray = TPC.ScreenPointToRay(Mouse.current.position.ReadValue());
                    Physics.Raycast(ray, out Ray, 100);
                }

                GameObject NewPointer = GameObject.CreatePrimitive(PrimitiveType.Sphere);
                NewPointer.GetComponent<Renderer>().material.shader = Shader.Find("GUI/Text Shader");
                NewPointer.GetComponent<Renderer>().material.color = (isCopying || (rightTrigger > 0.5f || Mouse.current.leftButton.isPressed)) ? buttonClickedA : buttonDefaultA;
                NewPointer.transform.localScale = new Vector3(0.2f, 0.2f, 0.2f);
                NewPointer.transform.position = isCopying ? whoCopy.transform.position : Ray.point;
                UnityEngine.Object.Destroy(NewPointer.GetComponent<BoxCollider>());
                UnityEngine.Object.Destroy(NewPointer.GetComponent<Rigidbody>());
                UnityEngine.Object.Destroy(NewPointer.GetComponent<Collider>());
                UnityEngine.Object.Destroy(NewPointer, Time.deltaTime);

                GameObject line = new GameObject("Line");
                LineRenderer liner = line.AddComponent<LineRenderer>();
                liner.material.shader = Shader.Find("GUI/Text Shader");
                liner.startColor = GetBGColor(0f);
                liner.endColor = GetBGColor(0.5f);
                liner.startWidth = 0.025f;
                liner.endWidth = 0.025f;
                liner.positionCount = 2;
                liner.useWorldSpace = true;
                liner.SetPosition(0, GorillaTagger.Instance.rightHandTransform.position);
                liner.SetPosition(1, isCopying ? whoCopy.transform.position : Ray.point);
                UnityEngine.Object.Destroy(line, Time.deltaTime);

                if (isCopying && whoCopy != null)
                {
                    if (!Overpowered.IsModded())
                    {
                        if (!GetIndex("Disable Auto Anti Ban").enabled)
                        {
                            Overpowered.AntiBan();
                        }
                    }
                    else
                    {
                        if (Time.time > pookiebear) 
                        { 
                            pookiebear = Time.time + 0.2f; 
                            Photon.Realtime.Player plr = RigManager.GetPlayerFromVRRig(whoCopy); 
                            plr.NickName = bannableNames[UnityEngine.Random.Range(0, bannableNames.Length - 1)]; 
                            System.Type targ = typeof(Photon.Realtime.Player); 
                            MethodInfo StartEruptionMethod = targ.GetMethod("SetPlayerNameProperty", BindingFlags.NonPublic | BindingFlags.Instance); 
                            StartEruptionMethod?.Invoke(plr, new object[] { }); 
                            RPCProtection(); 
                        } 
                    }
                } 
                if (rightTrigger > 0.5f || Mouse.current.leftButton.isPressed)
                {
                    VRRig possibly = Ray.collider.GetComponentInParent<VRRig>();
                    if (possibly && possibly != GorillaTagger.Instance.offlineVRRig)
                    {
                        isCopying = true;
                        whoCopy = possibly;
                    }
                }
            }
            else
            {
                if (isCopying)
                {
                    isCopying = false;
                    GorillaTagger.Instance.offlineVRRig.enabled = true;
                }
            }
        } public static void MaterialAll(float cooldown = 0.02f)
        {
            if (PhotonNetwork.IsMasterClient)
            {
                foreach (VRRig targetRig in GorillaParent.instance.vrrigs)
                {
                    if (PhotonNetwork.IsMasterClient && RigManager.CurrentGameMode() == "INFECTION")
                    {
                        if (materialCooldown < Time.time)
                        {
                            Photon.Realtime.Player target = RigManager.VRRigToPhotonView(targetRig).Owner;
                            GorillaTagManager tagManager = GorillaGameManager.instance.GetComponent<GorillaTagManager>();

                            switch (currentMat)
                            {
                                case 0: // remove infected material
                                    tagManager.currentInfected.Remove(target);
                                    tagManager.UpdateInfectionState();
                                    currentMat++;
                                    break;
                                case 1: // add rock material
                                    tagManager.currentIt = target;
                                    currentMat++;
                                    break;
                                case 2: // add infected material
                                    tagManager.AddInfectedPlayer(target);
                                    currentMat = 0;
                                    break;
                                default:
                                    if (currentMat > 2) Debug.Log("error: currentMat is larger than max");
                                    if (currentMat < 0) Debug.Log("error: currentMat is smaller than min");
                                    break;
                            }

                            materialCooldown = Time.time + cooldown;
                        }
                    }
                }
            }
        } public static void FreezeRig()
        {
            if (Input.instance.CheckButton(Input.ButtonType.grip))
            {
                // Get and disable rig
                VRRig rig = GorillaTagger.Instance.offlineVRRig;
                if (rig.enabled) rig.enabled = false;

                rig.transform.position = GorillaLocomotion.Player.Instance.headCollider.transform.position;
                rig.transform.rotation = GorillaLocomotion.Player.Instance.bodyCollider.transform.rotation;
            }
            else
            {
                GorillaTagger.Instance.enabled = true;
            }
        } async void GlitchedBody()
{
    foreach (VRRig vrrig in GorillaParent.instance.vrrigs)
    {
        vrrig.mainSkin.material.shader = Shader.Find("GUI/Text Shader");
        vrrig.mainSkin.material.color = new Color(-999, -999, -999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(999, 999, 999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(-999, -999, -999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(999, 999, 999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(-999, -999, -999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(999, 999, 999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(-999, -999, -999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(999, 999, 999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(-999, -999, -999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(999, 999, 999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(-999, -999, -999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(999, 999, 999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(-999, -999, -999);
        await Task.Delay(1000);
        vrrig.mainSkin.material.color = new Color(999, 999, 999);
        await Task.Delay(1000);
    }
} public static void CopyIdentityGun()
{
    bool flag = Main.rightGrab  Mouse.current.rightButton.isPressed;
    if (flag)
    {
        RaycastHit raycastHit;
        Physics.Raycast(GorillaTagger.Instance.rightHandTransform.position, GorillaTagger.Instance.rightHandTransform.forward, ref raycastHit);
        bool shouldBePC = Main.shouldBePC;
        if (shouldBePC)
        {
            Ray ray = Main.TPC.ScreenPointToRay(Mouse.current.position.ReadValue());
            Physics.Raycast(ray, ref raycastHit, 100f);
        }
        GameObject gameObject = GameObject.CreatePrimitive(0);
        gameObject.GetComponent<Renderer>().material.color = Main.bgColorA;
        gameObject.transform.localScale = new Vector3(0.2f, 0.2f, 0.2f);
        gameObject.transform.position = raycastHit.point;
        Object.Destroy(gameObject.GetComponent<BoxCollider>());
        Object.Destroy(gameObject.GetComponent<Rigidbody>());
        Object.Destroy(gameObject.GetComponent<Collider>());
        Object.Destroy(gameObject, Time.deltaTime);
        bool flag2 = (Main.rightTrigger > 0.5f  Mouse.current.leftButton.isPressed) && Time.time > Main.stealIdentityDelay;
        if (flag2)
        {
            VRRig componentInParent = raycastHit.collider.GetComponentInParent<VRRig>();
            bool flag3 = componentInParent && componentInParent != GorillaTagger.Instance.offlineVRRig;
            if (flag3)
            {
                Main.ChangeName(RigManager.GetPlayerFromVRRig(componentInParent).NickName);
                Main.ChangeColor(componentInParent.playerColor);
                Main.stealIdentityDelay = Time.time + 0.5f;
            }
        }
    }
}

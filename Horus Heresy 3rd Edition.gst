<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-9fe4-1dc3-b7c2-73cf" name="Horus Heresy 3rd Edition" battleScribeVersion="2.03" revision="6" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema" authorName="The4D6" authorContact="https://github.com/BSData/horus-heresy-3rd-edition/issues" authorUrl="https://github.com/BSData/horus-heresy-3rd-edition/">
  <categoryEntries>
    <categoryEntry name="Officer of the Line (2)" id="901a-6b71-7a29-4597" hidden="false"/>
    <categoryEntry name="Allegiance" id="c408-52f1-b632-4c82" hidden="false"/>
    <categoryEntry name="Apex Detachment" id="6b46-02bb-c8aa-142d" hidden="false">
      <constraints>
        <constraint type="max" value="0" field="selections" scope="roster" shared="false" id="0069-099b-d384-922d" includeChildSelections="false" includeChildForces="false"/>
        <constraint type="min" value="0" field="selections" scope="roster" shared="true" id="44aa-91db-d160-0ff8" includeChildSelections="false" includeChildForces="false"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="1" field="0069-099b-d384-922d">
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="roster" childId="d9a6-9b5f-b18a-4d63" shared="true" includeChildSelections="true" includeChildForces="true"/>
          </conditions>
        </modifier>
      </modifiers>
    </categoryEntry>
    <categoryEntry name="Armour" id="643a-1012-bd51-6537" hidden="false"/>
    <categoryEntry name="Asset" id="b720-ea51-7339-6a08" hidden="false"/>
    <categoryEntry name="Auxiliary Detachment" id="1a65-8b23-419b-b30f" hidden="false">
      <constraints>
        <constraint type="max" value="0" field="selections" scope="roster" shared="false" id="fa1e-96ba-db0c-d111" includeChildSelections="false" includeChildForces="false"/>
        <constraint type="min" value="0" field="selections" scope="roster" shared="true" id="1b13-33c3-0725-f7bc" includeChildSelections="false" includeChildForces="false"/>
      </constraints>
      <modifiers>
        <modifier type="increment" value="1" field="fa1e-96ba-db0c-d111">
          <repeats>
            <repeat value="1" repeats="1" field="selections" scope="roster" childId="6dbf-654a-f06f-2d69" shared="true" roundUp="false" includeChildSelections="true" includeChildForces="true"/>
          </repeats>
        </modifier>
        <modifier type="increment" value="2" field="fa1e-96ba-db0c-d111">
          <repeats>
            <repeat value="1" repeats="1" field="selections" scope="roster" childId="901a-6b71-7a29-4597" shared="true" roundUp="false" includeChildSelections="true" includeChildForces="true"/>
          </repeats>
        </modifier>
        <modifier type="decrement" value="1" field="fa1e-96ba-db0c-d111">
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="roster" childId="c857-47bd-6a4f-fcf8" shared="true" includeChildSelections="true" includeChildForces="true"/>
          </conditions>
        </modifier>
        <modifier type="decrement" value="1" field="fa1e-96ba-db0c-d111">
          <repeats>
            <repeat value="1" repeats="1" field="selections" scope="roster" childId="9501-add0-621d-f40f" shared="true" roundUp="false" includeChildSelections="true" includeChildForces="true"/>
          </repeats>
        </modifier>
      </modifiers>
    </categoryEntry>
    <categoryEntry name="Command" id="6dbf-654a-f06f-2d69" hidden="false"/>
    <categoryEntry name="Elites" id="5d5e-958f-e388-50b5" hidden="false"/>
    <categoryEntry name="Fast Attack" id="cf96-8891-3f9a-8921" hidden="false"/>
    <categoryEntry name="Heavy Assault" id="3235-bd79-e9b1-60fa" hidden="false"/>
    <categoryEntry name="Heavy Transport" id="52d0-8b78-439e-18e5" hidden="false"/>
    <categoryEntry name="High Command" id="d9a6-9b5f-b18a-4d63" hidden="false"/>
    <categoryEntry name="Lord of War" id="a46f-a465-0ead-d6b8" hidden="false"/>
    <categoryEntry name="Primary Detachment" id="951b-948c-cc74-6bef" hidden="false"/>
    <categoryEntry name="Prime Command" id="c85c-2963-658f-1bb9" hidden="false"/>
    <categoryEntry name="Prime Elites" id="276f-7a07-a56c-affd" hidden="false"/>
    <categoryEntry name="Prime Retinue" id="c66b-ef39-b20f-725b" hidden="false"/>
    <categoryEntry name="Prime Troops" id="c3f9-a7f3-984b-3fda" hidden="false"/>
    <categoryEntry name="Recon" id="2b65-a3f2-620a-dc58" hidden="false"/>
    <categoryEntry name="Retinue" id="a38e-50ff-310f-f19e" hidden="false"/>
    <categoryEntry name="Support" id="345f-9ba6-9b02-ed5c" hidden="false"/>
    <categoryEntry name="Transport" id="d162-4711-5d60-0a48" hidden="false"/>
    <categoryEntry name="Troops" id="88e6-d373-4152-0dd8" hidden="false"/>
    <categoryEntry name="War-engine" id="2499-7239-685f-8465" hidden="false"/>
    <categoryEntry name="Warlord" id="22ee-7208-4089-b005" hidden="false"/>
    <categoryEntry name="Free Power Weapon" id="647c-faca-3c98-c203" hidden="true"/>
    <categoryEntry name="Command Model Sub-type" id="9871-cb62-5283-2216" hidden="false">
      <rules>
        <rule name="Command Sub-Type" id="2126-084e-d5d1-9cca" hidden="false">
          <description>The following Rules apply to all Models with the Command Sub-Type:
- A Model with the Command Sub-Type may join and leave Units (see page 180).
- A Model with the Command Sub-Type may Issue and Accept Challenges (see the Rules for Challenges on page 256).
- The Controlling Player of a Unit that includes on or more Models with the Command Sub-Type may use the Characteristics of one of those Models to resolve any Characteristics Checks made for that Unit.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Unique Model Sub-Type" id="b980-187b-2b17-d635" hidden="false">
      <rules>
        <rule name="Unique Sub-Type" id="b7cc-6abd-53c9-09c3" hidden="false" publicationId="7d63-5df4-c656-52de" page="176">
          <description>The following Rules apply to all Models with the Unique Sub-Type:
- An Army may not include more than a single instance of a given Model with this Sub-Type.
- A Model with the Unique Sub-Type or a Unit composed entirely of Models with the Unique Sub-Type may not have any options other than those included on its Army List Profile selected for them.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Champion Model Sub-Type" id="5a95-e564-96b2-8dc9" hidden="false">
      <rules>
        <rule name="Champion Sub-Type" id="489d-a88d-0153-d5af" hidden="false" publicationId="7d63-5df4-c656-52de" page="176">
          <description>The following Rules apply to all Models with the Champion Sub-Type:
- A model with the Champion Sub-Type may Issue and Accept Challenges (see the Rules for Challenges on page 256).</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Specialist Model Sub-Type" id="af7d-af64-6b7d-da9d" hidden="false">
      <rules>
        <rule name="Specialist Sub-Type" id="8bee-6db5-247e-3634" hidden="false" publicationId="7d63-5df4-c656-52de" page="177">
          <description>The following Rules apply to all Models with the Specialist Sub-Type:
- A Model with the Specialist Sub-Type may join and leave Units (see page 180).</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Sergeant Model Sub-Type" id="8045-89a4-76d4-fcef" hidden="false">
      <rules>
        <rule name="Sergeant Sub-Type" id="3888-5604-8695-720e" hidden="false" publicationId="7d63-5df4-c656-52de" page="177">
          <description>The following Rules apply to all Models with the Sergeant Sub-Type:
- The Controlling Player of a Unit that includes one or more Models with the Sergeant Sub-Type may use the Characteristics of one of those Models to resolve any Characteristic Check made for that Unit.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Heavy Model Sub-Type" id="1e7d-9066-28d2-97a0" hidden="false">
      <rules>
        <rule name="Heavy Sub-Type" id="c625-7b16-7ceb-d4cb" hidden="false" publicationId="7d63-5df4-c656-52de" page="177">
          <description>The following Rules apply to all Models with the Heavy Sub-Type:
- A Unit that includes only Models with the Heavy Sub-Type gains a bonus of +1 to its Cool Characteristics for Checks to avoid gaining Tactical Statuses.
- A Unit that includes any Models with the Heavy Sub-Type may not Rush.
- A Unit that includes any Models with the Heavy Sub-Type only uses its Movement Characteristic to determine how far it moves as part of a Set-up Move, not Movement and Initiative totalled.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Light Model Sub-Type" id="f4ba-00e5-3d2e-eaac" hidden="false">
      <rules>
        <rule name="Light Sub-Type" id="f7b0-5312-7f4e-96c4" hidden="false" publicationId="7d63-5df4-c656-52de" page="177">
          <description>The following Rules apply to all Models with the Light Sub-Type:
- A Unit that includes only Models with the Light Sub-Type gain a +2 modifier to its Initiative when determining how far that Unit may Rush (this bonus stacks with other bonuses to Rush distance).
- A Unit that includes only Models with the Light Sub-Type may make Shooting Attacks after having Rushed, but makes all such Shooting Attacks as Snap Shots. Models or Weapons that cannot attack as Snap Shots may not make attacks.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Skirmish Model Sub-Type" id="d2d6-5a84-672b-2833" hidden="false">
      <rules>
        <rule name="Skirmish Sub-Type" id="8745-f111-ed89-1357" hidden="false" publicationId="7d63-5df4-c656-52de" page="178">
          <description>The following Rules apply to all Models with the Skirmish Sub-Type:
- A Unit that includes only Models with the Skirmish Sub-Type has a Unit Coherency range of 3&quot; rather than 2&quot;.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Antigrav Model Sub-Type" id="c504-9dfa-35d3-c98f" hidden="false">
      <rules>
        <rule name="Antigrav Sub-Type" id="6568-dcd0-c748-2d3b" hidden="false" publicationId="7d63-5df4-c656-52de" page="178">
          <description>The following Rules apply to all Models with the Antigrav Sub-Type:
- A Unit that includes only Models with the Antigrav Sub-Type may ignore the effects of any and all Terrain it passes over during movement, including passing over Impassable Terrain without penalty or restriction. However, such Units may not begin or end their movement in Impassable Terrain, and if beginning or ending their movement in Dangerous Terrain must take Dangerous Terrain Tests as normal.
- A Unit that includes only Models with the Antigrav Sub-Type may ignore both friendly and enemy Models and Units when Moving. However,, when moving over a friendly Unit all Models with the Antigrav Sub-Type must end their move at least 1&quot; away from all models that are not part of the same Unit, or if moving over an enemy Unit, must end their move at least 1&quot; away from any enemy Model.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Transport Model Sub-Type" id="2e6d-36f6-eeca-8e0c" hidden="false">
      <rules>
        <rule name="Transport Sub-Type" id="5227-a434-167a-12ba" hidden="false" publicationId="7d63-5df4-c656-52de" page="178">
          <description>All Models with the Transport Sub-Type are bound by a set of Rules regarding how they operate:
- All Models with the Transport Sub-Type have a Transport Capacity Characteristic, which determines the maximum number of Models that can Embark upon it - one Model per point of Transport Capacity, unless another Rule states otherwise.
- Only Models with the Infantry or Paragon Type may Embark or Disembark upon a Model with the Transport Sub-Type.
- A Unit may only Embark on a Model with the Transport Sub-Type if all Models in the Embarking Unit have the same Faction as the Model with the Transport Sub-Type.
- A Model with the Transport Sub-Type may only have a single Unit Embarked upon it at any one time (Models with the Specialist Sub-Type, Command Sub-Type, or Paragon Type that have joined a Unit are considered part of that Unit and may Embark alongside it).
- A Unit may not be partially Embarked on a Model with the Transport Sub-Type - either all Models or no Models in a Unit may be Embarked on a given Model.
- If a Model with the Transport Sub-Type has a Unit Embarked upon it, the Embarked Unit is not considered part of the same Unit. The two remain separate Units for all purposes.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Infantry Model Type" id="594d-fa82-13cb-a345" hidden="false" publicationId="7d63-5df4-c656-52de" page="174">
      <rules>
        <rule name="Infantry Type" id="6740-4d5b-fca0-ba1f" hidden="false" publicationId="7d63-5df4-c656-52de" page="174">
          <description>Infantry is the most basic Type, and is applied to most Models in the game. A Model with the Infantry Type uses the Core Rules without modification, gaining neither benefit nor penalty. Models with the Infantry Type may Embark and Disembark upon Models with the Transport Sub-Type.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Cavalry Model Type" id="a073-2d4a-5bed-123e" hidden="false" publicationId="7d63-5df4-c656-52de" page="174">
      <rules>
        <rule name="Cavalry Type" id="f051-0d1e-c7c2-c92e" hidden="false" publicationId="7d63-5df4-c656-52de" page="174">
          <description>The following Rules apply to all Models with the Cavalry Types:
- When making a Fall Back Move for a Model with the Cavalry Type, that Model moves a distance equal to the Initiative Characteristic of the Model plus the total of two Dice (IE: 2D6) rolled and added together.
- Models with the Cavalry Type may not make use of any Cover Save granted by Terrain Features or Areas of Terrain.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Walker Model Type" id="38d4-d720-8009-acd3" hidden="false" page="174" publicationId="7d63-5df4-c656-52de">
      <rules>
        <rule name="Walker Type" id="55d4-fd0c-cbdb-a25a" hidden="false" publicationId="7d63-5df4-c656-52de" page="174">
          <description>The following Rules apply to all Models with the Walker Type:
- When targeting a Unit that includes any Models with the Walker Type, the effects of the Poisoned (X) Special Rule only trigger a Wound Test with a result of a &apos;6&apos; before modifiers are applied, regardless of the value of X for that variant of the Special Rule.
- A Model with the Walker Type may attack with all Weapons they have in each Shooting Attack they make, including as part of a Reaction. Note that this does not allow Weapons that do not have the Assault Trait to be used to attack as part of a Volley Attack.
- In Step 1 of the Resolution Sub-Phase, when deciding how many Models a Player controls in a Combat, a Model with the Walker Type counts as a number of Models equal to that Model&apos;s Base Wounds Value.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Paragon Model Type" id="7799-e1d6-762b-700b" hidden="false" publicationId="7d63-5df4-c656-52de" page="175">
      <rules>
        <rule name="Paragon Type" id="3abd-0aed-12ad-8b4f" hidden="false" publicationId="7d63-5df4-c656-52de" page="175">
          <description>The following Rules apply to all Models with the Paragon Type:
- Any Hits inflicted by a Model with the Paragon Type, as part of either Shooting Attacks or in close combat are allocated by the attacking Model&apos;s Controlling Player and not the Controlling Player of the Target Unit.
- Models with the Paragon Type may join an leave a Unit that includes Models with the Infantry Type, and Models with the Infantry Type may join and leave a Unit that includes one or more Models with the Paragon Type.
- Models with the Paragon Type may Embark and Disembark upon Models with the Transport Sub-Type.
- A Model with the Paragon Type may Issue and Accept Challenges (see Rules for Challenges on page 256).
- The Controlling Player of a Unit that include one or more Models with the Paragon Type may use the Characteristics of one of those Models to resolve any Characteristic Checks made for that Unit.
- In Step 1 of the Resolution Sub-Phase, when deciding how many Models a Player controls in a Combat, a Model with the Paragon Type counts as a number of Models equal to that Model&apos;s Base Wounds Value.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Automata Model Type" id="5833-5e86-26bc-0916" hidden="false" publicationId="7d63-5df4-c656-52de" page="175">
      <rules>
        <rule name="New Rule" id="a7d3-aaa8-8179-33d1" hidden="false"/>
      </rules>
    </categoryEntry>
    <categoryEntry name="Prime High Command" id="3568-ad75-b452-3137" hidden="false"/>
    <categoryEntry name="Prime War-engine" id="9699-67c9-2c0b-e64b" hidden="false"/>
    <categoryEntry name="Prime Support" id="1c79-ecdf-9a64-84c9" hidden="false"/>
    <categoryEntry name="Prime Transport" id="fc27-1a48-84ae-aa7b" hidden="false"/>
    <categoryEntry name="Prime Heavy Assault" id="1e95-35f0-1353-ffa1" hidden="false"/>
    <categoryEntry name="Prime Heavy Transport" id="abff-3686-c39a-9a24" hidden="false"/>
    <categoryEntry name="Prime Armour" id="4460-7bc1-4d80-aecb" hidden="false"/>
    <categoryEntry name="Prime Recon" id="6348-ecd0-714d-042a" hidden="false"/>
    <categoryEntry name="Prime Fast Attack" id="c291-144b-3da6-37ed" hidden="false"/>
    <categoryEntry name="Vehicle Model Type" id="aa5a-c9fd-1eb1-7a45" hidden="false"/>
    <categoryEntry name="Rapid Sub-Type" id="a5c6-b359-cecb-e0b1" hidden="false"/>
    <categoryEntry name="Unstoppable Sub-Type" id="5555-f37e-8ad0-20c0" hidden="false">
      <rules>
        <rule name="Unstoppable Sub-Type" id="263f-be63-a120-1f2f" hidden="false">
          <description>The following Rules apply to all Models with the Unstoppable Sub-Type:
• A Unit comprised entirely of Models with this Sub-Type is never Locked in Combat, and during the Movement Phase may move normally even if there is an enemy Model in Base Contact with it. Enemy Models in Base Contact with such a Model in the Assault Phase may attack it as thought they were Locked in Combat and engaged with it.
• A Model with this Sub-Type may move through enemy Models if it began the Movement Phase in Base Contact with one or move enemy Models - but may not end a move in the Movement Phase in Base Contact with an enemy Model.
• A Model with this Sub-Type may never Embark on a Model with the Transport Sub-Type, even if another Special Rule would allow it to do so.
• While there are one or more enemy Models in Base Contact with a Model with this Sub-Type, the Model with this Sub-Type may not make Shooting Attacks, even though it does not count as being Locked in Combat.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry name="Crux Magisterium" id="9501-add0-621d-f40f" hidden="true"/>
    <categoryEntry name="Required Fulgrim Transformed" id="634b-596b-118f-80b6" hidden="true"/>
    <categoryEntry name="Super-heavy Model Sub-Type" id="4d42-b711-7946-8e15" hidden="false"/>
    <categoryEntry name="Flyer Model Sub-Type" id="42a3-02e9-e0e4-8292" hidden="false"/>
    <categoryEntry name="Stable Model Sub-Type" id="3753-39e1-22c2-531b" hidden="false"/>
    <categoryEntry name="Open Beta Release" id="c5ac-45c2-a8a9-e32c" hidden="false"/>
    <categoryEntry name="Command - Optae Only" id="ee42-a241-c364-489d" hidden="false"/>
    <categoryEntry name="The Hammer of Olympia Unlock" id="b7c9-7d2d-fb56-5486" hidden="true"/>
    <categoryEntry name="Malefic" id="2de1-ddd6-ebb4-10df" hidden="false">
      <rules>
        <rule name="Malefic" id="56af-aee5-210b-7093" hidden="false">
          <description>Malefic Rule</description>
        </rule>
      </rules>
    </categoryEntry>
  </categoryEntries>
  <forceEntries>
    <forceEntry name="Crusade Force Organization Chart" id="8562-592c-8d4b-a1f0" hidden="false" childForcesLabel="Detachments" sortIndex="1">
      <forceEntries>
        <forceEntry name="Crusade Primary Detachment" id="8f12-c30a-6c20-6296" hidden="true" sortIndex="1">
          <categoryLinks>
            <categoryLink name="High Command" hidden="false" id="0656-cbdf-6a67-cff1" targetId="d9a6-9b5f-b18a-4d63">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="ff77-1342-ae9a-41b9"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Command" hidden="false" id="dd70-4fb9-3253-7740" targetId="6dbf-654a-f06f-2d69">
              <modifiers>
                <modifier type="set" value="2" field="d4ca-596a-5b48-948e">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="c85c-2963-658f-1bb9" shared="true"/>
                  </conditions>
                </modifier>
              </modifiers>
              <constraints>
                <constraint type="max" value="3" field="selections" scope="parent" shared="true" id="d4ca-596a-5b48-948e"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Troops" hidden="false" id="a1f0-f0d4-6bac-b279" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="330d-223d-3e3c-b96d"/>
              </constraints>
              <modifiers>
                <modifier type="set" value="3" field="330d-223d-3e3c-b96d">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="c3f9-a7f3-984b-3fda" shared="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </categoryLink>
            <categoryLink name="Prime Troops" hidden="false" id="7f2f-617f-ebff-25e0" targetId="c3f9-a7f3-984b-3fda">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="715b-f5db-a7c6-1555" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Command" hidden="false" id="3142-6a47-c47b-7dff" targetId="c85c-2963-658f-1bb9">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="9625-0609-3106-9090" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Transport" hidden="false" id="254b-5bcb-d955-27c3" targetId="d162-4711-5d60-0a48">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="6753-a223-4e43-fe61"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Armour" hidden="false" id="feaa-cea2-4a2c-9197" targetId="643a-1012-bd51-6537">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="c7b1-2dc9-f443-8300"/>
              </constraints>
              <modifiers>
                <modifier type="set" value="true" field="hidden">
                  <conditions>
                    <condition type="equalTo" value="0" field="selections" scope="force" childId="d5b0-22dc-909e-415e" shared="true" includeChildSelections="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </categoryLink>
          </categoryLinks>
          <constraints>
            <constraint type="min" value="1" field="forces" scope="roster" shared="true" id="5611-db49-9e64-44c6-min" includeChildSelections="true"/>
            <constraint type="max" value="1" field="forces" scope="roster" shared="true" id="5611-db49-9e64-44c6-max" includeChildSelections="true"/>
            <constraint type="min" value="1" field="forces" scope="parent" shared="true" id="8613-3ef7-c5b4-4ccb" includeChildSelections="false"/>
            <constraint type="max" value="1" field="forces" scope="parent" shared="true" id="5df5-5821-ea4c-d0e1" includeChildSelections="false"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Warlord Detachment" id="50c3-ba24-7471-3d32" hidden="true" sortIndex="2">
          <categoryLinks>
            <categoryLink name="Warlord" hidden="false" id="2a9f-70e6-d060-3978" targetId="22ee-7208-4089-b005">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2267-1d5d-1196-85a3"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Retinue" hidden="false" id="98a4-441b-4896-7070" targetId="a38e-50ff-310f-f19e">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="afa0-9325-9a60-5197"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Heavy Transport" hidden="false" id="3557-3aaa-70d4-fa04" targetId="52d0-8b78-439e-18e5">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="0408-8c76-39b5-8309"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <constraints>
            <constraint type="max" value="0" field="forces" scope="roster" shared="true" id="63d0-2300-c551-7797" includeChildSelections="false"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="1" field="63d0-2300-c551-7797">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="atLeast" value="3000" field="9893-c379-920b-8982" scope="roster" childId="any" shared="true" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Armoured Fist" id="cc51-fdce-8a34-dbcf" hidden="true" sortIndex="3">
          <categoryLinks>
            <categoryLink name="Transport" hidden="false" id="c11a-80ab-d85b-9f76" targetId="d162-4711-5d60-0a48">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="6431-8973-1e21-373c"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Heavy Transport" hidden="false" id="d433-141d-baf3-6d7a" targetId="52d0-8b78-439e-18e5">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="5f94-2b1f-582e-f027"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Allegiance" hidden="false" id="3647-97cd-a513-4d92" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="b7f5-8b0e-594a-3339" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="a42c-da22-e392-2511" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Tactical Support" id="2965-5682-3cbc-8b47" hidden="true" sortIndex="4">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="585f-55c2-2b87-6099" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="8d53-3c31-eb26-ab3e" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="bbc9-a8c6-26b6-69a9" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Troops" hidden="false" id="fd21-c94c-01e2-5612" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="e822-bdc9-a6b4-8196"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Support" hidden="false" id="3b23-0381-3ee4-b239" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="c86b-d088-efd3-0e86"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Armoured Support" id="4a2f-ac9e-195e-77cf" hidden="true" sortIndex="5">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="b376-9aec-a5c8-3a2c" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="994c-8589-29ce-4c87" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="24ab-62a7-2c08-5172" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Armour" hidden="false" id="9ced-e8ed-408f-615e" targetId="643a-1012-bd51-6537">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="55ad-034f-09fb-344b"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Heavy Support" id="bd1f-82a0-abd4-cd56" hidden="true" sortIndex="6">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="dfb1-7859-f02e-5441" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="be4c-eca5-6cc2-1339" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="b078-7b77-5249-6f7f" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="War-engine" hidden="false" id="b5b6-e00e-cfa1-d714" targetId="2499-7239-685f-8465">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="aaae-9981-1e16-13b2"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Combat Pioneer" id="edf5-6891-81d8-6309" hidden="true" sortIndex="7">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="a12c-88a5-0eb8-4d95" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="c896-c68c-53b6-493d" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="5088-26a2-59c2-7213" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Recon" hidden="false" id="e1ca-d1de-f422-d5b3" targetId="2b65-a3f2-620a-dc58">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="56c4-65a1-7083-3041"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Shock Assault" id="c9a5-3069-920b-32f1" hidden="true" sortIndex="8">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="e091-482b-99e8-9b79" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="7bfb-98d0-b837-c045" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="38ef-99c0-fe77-0b6b" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Heavy Assault" hidden="false" id="b5a6-4082-06e1-a253" targetId="3235-bd79-e9b1-60fa">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="5279-0e0a-763f-7aec"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - First Strike" id="c444-8242-d3fc-b5b0" hidden="true" sortIndex="9">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="67c0-be75-3659-c481" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="6cd6-6216-f005-682d" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="8b3b-9810-4741-6c26" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Fast Attack" hidden="false" id="ac30-1788-0918-4098" targetId="cf96-8891-3f9a-8921">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="9723-874b-5bbf-14cc"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - Combat Retinue" id="7203-426e-7a82-0b01" hidden="true" sortIndex="10">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="ac9d-14be-abdf-b9ad" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="a56f-407f-0565-bb2a" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="8ac8-5d55-e40b-9fac" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Retinue" hidden="false" id="0761-8543-24a4-858a" targetId="a38e-50ff-310f-f19e">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="parent" shared="true" id="e8a2-a21b-9d22-be15"/>
              </constraints>
              <modifiers>
                <modifier type="set" value="2" field="e8a2-a21b-9d22-be15">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="c66b-ef39-b20f-725b" shared="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </categoryLink>
            <categoryLink name="Prime Retinue" hidden="false" id="0b17-ed7d-de3d-8b06" targetId="c66b-ef39-b20f-725b">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="1305-aaaf-1d68-85d3" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <comment>High Command unlock</comment>
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="8562-592c-8d4b-a1f0" childId="d9a6-9b5f-b18a-4d63" shared="true"/>
                    <condition type="equalTo" value="0" field="selections" scope="parent" childId="any" shared="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - Officer Cadre" id="90b7-c0fa-a9e1-6765" hidden="true" sortIndex="11">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="a008-e16b-5d34-1944" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="c51c-e6c4-3ecd-407b" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2338-a887-1c67-4ef5" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Command" hidden="false" id="20c6-18b6-f008-4b8c" targetId="6dbf-654a-f06f-2d69">
              <modifiers>
                <modifier type="set" value="1" field="0e7d-00b4-6245-c674">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="c85c-2963-658f-1bb9" shared="true"/>
                  </conditions>
                </modifier>
              </modifiers>
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="0e7d-00b4-6245-c674"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Command" hidden="false" id="68a6-87c4-29e7-1ad6" targetId="c85c-2963-658f-1bb9">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="56e0-120e-2643-933d" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="8562-592c-8d4b-a1f0" childId="d9a6-9b5f-b18a-4d63" shared="true"/>
              </conditions>
              <comment>High Command unlock</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - Army Vanguard" id="0690-c05e-c301-f595" hidden="true" sortIndex="12">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="3852-fd3b-58c3-8ae4" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="93ae-c470-49f4-8a82" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="a826-ce9b-00b2-16fe" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Elites" hidden="false" id="cc06-a172-8590-e553" targetId="5d5e-958f-e388-50b5">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="parent" shared="true" id="e065-2759-3736-b41b"/>
              </constraints>
              <modifiers>
                <modifier type="set" value="2" field="e065-2759-3736-b41b">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="276f-7a07-a56c-affd" shared="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </categoryLink>
            <categoryLink name="Prime Elites" hidden="false" id="6537-5c62-58d9-adbb" targetId="276f-7a07-a56c-affd">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="369b-315b-551d-2eeb" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="8562-592c-8d4b-a1f0" childId="d9a6-9b5f-b18a-4d63" shared="true"/>
              </conditions>
              <comment>High Command unlock</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Primacy Wing" id="b86b-981d-9aab-5675" hidden="true">
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                  </conditions>
                  <comment>EC</comment>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <categoryLinks>
            <categoryLink name="Retinue" hidden="false" id="0519-2a37-5f9e-72de" targetId="a38e-50ff-310f-f19e">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="8bf4-b937-d2e5-6e26"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Elites" hidden="false" id="2eae-b50c-fba3-2fad" targetId="5d5e-958f-e388-50b5">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="0961-9ba3-d9db-ae70"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Fast Attack" hidden="false" id="9a30-4f70-50fa-2200" targetId="cf96-8891-3f9a-8921">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="1941-e677-3709-8d3d"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
        </forceEntry>
        <forceEntry name="Auxiliary - Tagmata Cohort" id="59b8-2183-4bab-b91c" hidden="true" sortIndex="13">
          <categoryLinks>
            <categoryLink name="Support" hidden="false" id="aaf9-4c82-2830-47b6" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="ec08-2ba4-b38c-8746" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Mechanicum only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Apprentice Cadre" id="6e73-e03d-9ae7-fd33" hidden="true" sortIndex="14">
          <categoryLinks>
            <categoryLink name="Troops" hidden="false" id="b964-d2eb-562c-17b1" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="d17a-1b20-7ed3-f6b9" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Troops" hidden="false" id="a9b4-9c31-01ac-0c8b" targetId="c3f9-a7f3-984b-3fda">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="b649-61e8-62cb-a4b0" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Mechanicum only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - The Hearth of Power" id="0594-4b9b-675b-f633" hidden="true" sortIndex="15">
          <categoryLinks>
            <categoryLink name="Retinue" hidden="false" id="c224-b95f-a73a-ea18" targetId="a38e-50ff-310f-f19e">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="parent" shared="true" id="15ee-6d6c-95a1-c556" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Troops" hidden="false" id="6193-d328-43af-a157" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="parent" shared="true" id="432d-8f1f-69e5-ae1a" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Troops" hidden="false" id="d328-63f2-eacd-6993" targetId="c3f9-a7f3-984b-3fda">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="parent" shared="true" id="4f87-3280-8817-9aa0" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Retinue" hidden="false" id="f067-4ed1-baca-a150" targetId="c66b-ef39-b20f-725b">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="01b3-450e-6e90-b041" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Mechanicum only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - Command Maniple" id="dbe3-9946-d4de-dc73" hidden="true" sortIndex="16">
          <categoryLinks>
            <categoryLink name="Elites" hidden="false" id="0ed6-de35-f804-23a7" targetId="5d5e-958f-e388-50b5">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="force" shared="true" id="8b8e-2c6e-7930-733e" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Elites" hidden="false" id="3c7c-3630-9acc-562b" targetId="276f-7a07-a56c-affd">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="force" shared="true" id="e97e-ebbe-716f-69c7" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Support" hidden="false" id="bbf6-da5f-87f7-a428" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="force" shared="true" id="68f2-1777-ac43-88ed" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="War-engine" hidden="false" id="08d9-03ab-a94f-20fa" targetId="2499-7239-685f-8465">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="force" shared="true" id="487b-d91d-5d23-8bd7" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Support" hidden="false" id="90ba-7fdf-aa67-9877" targetId="1c79-ecdf-9a64-84c9">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="force" shared="true" id="a8ec-422f-f6b1-8c29" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime War-engine" hidden="false" id="4a65-58fd-eaab-5227" targetId="9699-67c9-2c0b-e64b">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="force" shared="true" id="af49-4137-108e-9410" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Mechanicum only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - The Panoply of Cruelty" id="d5e2-3162-f591-6a81" hidden="true" sortIndex="17">
          <categoryLinks>
            <categoryLink name="Heavy Assault" hidden="false" id="b6ee-4b0b-f3f4-d9f4" targetId="3235-bd79-e9b1-60fa">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="force" shared="true" id="9bb1-6117-1074-8829" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Heavy assault" hidden="false" id="7858-baba-5c90-c845" targetId="1e95-35f0-1353-ffa1">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="force" shared="true" id="b327-c9e2-cbd8-c6dd" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Mechanicum only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - The Host of Destruction" id="1db9-6dc0-7da5-e517" hidden="true" sortIndex="18">
          <categoryLinks>
            <categoryLink name="Elites" hidden="false" id="81bd-4c80-78a2-86cc" targetId="5d5e-958f-e388-50b5">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="force" shared="true" id="ab72-b6c7-109a-0093" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Elites" hidden="false" id="3170-c475-414a-5306" targetId="276f-7a07-a56c-affd">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="force" shared="true" id="f3db-6a01-37c5-5b27" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Mechanicum only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - Crux of Judgement" id="4f19-3023-0077-1049" hidden="true" sortIndex="19">
          <categoryLinks>
            <categoryLink name="Command" hidden="false" id="7023-93dc-4fda-c76a" targetId="6dbf-654a-f06f-2d69">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="force" shared="true" id="83c4-a1e7-c38c-e164" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Mechanicum only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - Iron Phalanx" id="a782-7985-325b-1840" hidden="true" sortIndex="20">
          <categoryLinks>
            <categoryLink name="Armour" hidden="false" id="08ab-b51f-53b5-8bdb" targetId="643a-1012-bd51-6537">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="force" shared="true" id="5cb2-b22a-d3cc-30d5" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Heavy Transport" hidden="false" id="9ad9-6704-b303-061b" targetId="52d0-8b78-439e-18e5">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="force" shared="true" id="aa4b-9edd-69b6-8369" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Armour" hidden="false" id="12a3-bb11-5f11-b088" targetId="4460-7bc1-4d80-aecb">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="force" shared="true" id="30c6-efe4-2c42-4de1" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Heavy transport" hidden="false" id="43ad-eb3c-ec25-e7f6" targetId="abff-3686-c39a-9a24">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="force" shared="true" id="e480-9bfa-a46f-c224" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or"/>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                  </conditions>
                  <comment>Mechanicum</comment>
                </conditionGroup>
              </conditionGroups>
              <comment>Mechanicum only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - Thallax Command Cohort" id="7f03-c1a3-d883-8a98" hidden="true" sortIndex="21">
          <categoryLinks>
            <categoryLink name="Support" hidden="false" id="46b3-d841-3b96-79d0" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="force" shared="true" id="a92e-fe8c-1f4f-78c2" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Support" hidden="false" id="3db6-b6bc-0e38-f2ca" targetId="1c79-ecdf-9a64-84c9">
              <constraints>
                <constraint type="max" value="3" field="selections" scope="force" shared="true" id="eec6-e569-ed5c-2fb5" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Mechanicum only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Apex - The Hammer of Olympia" id="1d3d-a6b8-94d8-443b" hidden="true" sortIndex="23">
          <categoryLinks>
            <categoryLink name="Heavy Assault" hidden="false" id="9912-8b9a-4ece-70b8" targetId="3235-bd79-e9b1-60fa">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="5284-e882-a1ce-63f5"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Heavy assault" hidden="false" id="a84e-041a-13e5-dd83" targetId="1e95-35f0-1353-ffa1">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="3059-d2bb-adc3-57e8"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Heavy Transport" hidden="false" id="b289-3a10-b731-51e7" targetId="52d0-8b78-439e-18e5">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="c45f-34de-69ae-e4a5"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Troops" hidden="false" id="7921-fd7f-14e3-5ca8" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="1f39-39e0-a458-a03d"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Troops" hidden="false" id="d156-ffd9-8563-528f" targetId="c3f9-a7f3-984b-3fda">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="a0c9-c956-ddbb-abb4"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="b7c9-7d2d-fb56-5486" shared="true" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                  <comment>IW</comment>
                </conditionGroup>
              </conditionGroups>
              <comment>IW Only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - The Ironfire Cohort" id="5bc5-5224-c751-d437" hidden="true" sortIndex="15">
          <categoryLinks>
            <categoryLink name="Support" hidden="false" id="3f2d-d215-c312-9e0c" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="c365-9f8c-a155-0fb3"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Armour" hidden="false" id="2c39-7871-5384-b101" targetId="643a-1012-bd51-6537">
              <constraints>
                <constraint type="max" value="0" field="selections" scope="parent" shared="true" id="8e95-747d-01c5-d9a0"/>
              </constraints>
              <modifiers>
                <modifier type="increment" value="1" field="8e95-747d-01c5-d9a0">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="force" childId="e6e4-964a-5852-9c07" shared="true" includeChildSelections="true"/>
                  </conditions>
                </modifier>
                <modifier type="increment" value="1" field="8e95-747d-01c5-d9a0">
                  <conditions>
                    <condition type="equalTo" value="2" field="selections" scope="force" childId="e6e4-964a-5852-9c07" shared="true" includeChildSelections="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </categoryLink>
            <categoryLink name="Prime Armour" hidden="false" id="e9c8-da1a-160f-75a0" targetId="4460-7bc1-4d80-aecb">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="eb4d-fa03-139c-092e"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                  </conditions>
                  <comment>IW</comment>
                </conditionGroup>
              </conditionGroups>
              <comment>IW Only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Reaping Host" id="3b60-24c1-dccc-23db" hidden="true">
          <categoryLinks>
            <categoryLink name="Support" hidden="false" id="b9b8-674c-86a5-00c7" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="0341-5123-4889-a0e1"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Troops" hidden="false" id="e2b5-5b1a-2732-e8d3" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="21a3-169f-7dc6-230a"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Troops" hidden="false" id="f3e7-07a2-4993-8677" targetId="c3f9-a7f3-984b-3fda">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2a14-da6f-02d8-9fcd" includeChildSelections="false"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Heavy Assault" hidden="false" id="d996-9229-fe59-2caf" targetId="3235-bd79-e9b1-60fa">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="e8a1-5314-2017-a0be"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                  </conditions>
                  <comment>IW</comment>
                </conditionGroup>
              </conditionGroups>
              <comment>IW Only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Primus Demi-Company" id="1da1-f220-0bad-5f78" hidden="true">
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                  </conditions>
                  <comment>UM</comment>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <categoryLinks>
            <categoryLink name="Optae Only" hidden="false" id="cc04-ac5c-f2c5-8c7a" targetId="ee42-a241-c364-489d" type="categoryEntry">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="b5b4-12a7-164c-df56"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Troops" hidden="false" id="72cf-9728-d681-09a3" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="e4aa-c2f6-e5bb-55f8"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Support" hidden="false" id="6028-9049-4def-98a5" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="fab5-fa71-cc55-0d54"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Command" hidden="false" id="c183-a899-4051-1be6" targetId="c85c-2963-658f-1bb9">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="331d-6635-18c5-0aae" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Fast Attack" hidden="false" id="f9c1-957f-a121-3bad" targetId="cf96-8891-3f9a-8921">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="0b6a-83d5-ce04-e8ee"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
        </forceEntry>
      </forceEntries>
      <constraints>
        <constraint type="max" value="1" field="forces" scope="roster" shared="true" id="dae8-8a74-0984-6332" includeChildSelections="false"/>
      </constraints>
      <categoryLinks>
        <categoryLink name="Allegiance" hidden="false" id="a1c5-83d9-7485-0c6d" targetId="c408-52f1-b632-4c82">
          <constraints>
            <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="7398-c17d-d076-47d6" includeChildSelections="true"/>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="af1a-23f1-0ac4-5b33" includeChildSelections="true"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Open Beta Release" hidden="false" id="565d-57fb-6ccc-9598" targetId="c5ac-45c2-a8a9-e32c" type="categoryEntry">
          <constraints>
            <constraint type="min" value="2" field="selections" scope="parent" shared="true" id="f595-8e0d-c936-7de8" includeChildSelections="true"/>
            <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="3cd4-1efc-c9a1-b1ef" includeChildSelections="true"/>
          </constraints>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
    <forceEntry name="Allied Detachment" id="256b-b8a8-017a-75e9" hidden="false" childForcesLabel="Detachments" sortIndex="2">
      <forceEntries>
        <forceEntry name="Allied Detachment " id="7469-bbd2-a2ad-f8a8" hidden="false" childForcesLabel="" sortIndex="1">
          <categoryLinks>
            <categoryLink name="Command" hidden="false" id="772e-aee9-2bf8-b30d" targetId="6dbf-654a-f06f-2d69">
              <modifiers>
                <modifier type="set" value="1" field="c424-b8af-6b47-08f4">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="c85c-2963-658f-1bb9" shared="true"/>
                  </conditions>
                </modifier>
              </modifiers>
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="c424-b8af-6b47-08f4"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Command" hidden="false" id="b4fd-4296-288a-f322" targetId="c85c-2963-658f-1bb9">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="8fb2-7d15-d96e-c029"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Troops" hidden="false" id="b822-a072-5588-7fd6" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="e617-d1fe-d56a-6fcc"/>
              </constraints>
              <modifiers>
                <modifier type="set" value="3" field="e617-d1fe-d56a-6fcc">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="88e6-d373-4152-0dd8" shared="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </categoryLink>
          </categoryLinks>
          <constraints>
            <constraint type="max" value="0" field="9893-c379-920b-8982" scope="roster" shared="true" id="3fef-ac67-de89-249f"/>
          </constraints>
          <modifiers>
            <modifier type="increment" value="1" field="3fef-ac67-de89-249f">
              <repeats>
                <repeat value="2" repeats="1" field="9893-c379-920b-8982" scope="roster" childId="any" shared="true" roundUp="false" includeChildSelections="true" includeChildForces="true"/>
              </repeats>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Armoured Fist" id="ba8e-3e7c-a1a4-ee31" hidden="true" sortIndex="2">
          <categoryLinks>
            <categoryLink name="Transport" hidden="false" id="91ee-380d-6568-e9c6" targetId="d162-4711-5d60-0a48">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="9576-b85b-f0e3-a206"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Heavy Transport" hidden="false" id="f13d-3aa2-addc-f66e" targetId="52d0-8b78-439e-18e5">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="0cf9-2f86-eb2a-5282"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Allegiance" hidden="false" id="7a08-ce13-d085-2f15" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="73b1-4f3a-7ddb-ace0" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="94c7-647d-7461-b5d6" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Tactical Support" id="e432-7628-b650-1128" hidden="true" sortIndex="3">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="0595-cd14-774f-c033" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="d2b7-494e-cb32-fb75" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="9b8e-fe26-8c96-41db" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Troops" hidden="false" id="694c-6aad-5a94-d2cb" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="d7c6-5157-cb64-7f03"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Support" hidden="false" id="9d84-8122-bee5-55c3" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="16ba-48c5-9ec8-ce2f"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Armoured Support" id="9190-71ff-4456-0424" hidden="true" sortIndex="4">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="5bce-8299-e328-dfb5" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="9650-3d35-512e-3987" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="8713-7add-c406-464e" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Armour" hidden="false" id="6319-19bd-c727-bb6b" targetId="643a-1012-bd51-6537">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="parent" shared="true" id="ee1b-c501-0164-7a01"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Heavy Support" id="9bd5-3efe-4c83-a3cc" hidden="true" sortIndex="5">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="4fb2-75cb-22e1-6124" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="c337-e263-0d9a-65bc" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="b99f-d80f-b9c8-56c6" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="War-engine" hidden="false" id="709b-b1f6-0cd3-208d" targetId="2499-7239-685f-8465">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="c93f-9b53-dc04-ece1"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Combat Pioneer" id="f310-e6b6-a678-a80a" hidden="true" sortIndex="6">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="a8b5-8a5a-92b6-ec77" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="e470-e139-02ba-a30b" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="f4ad-1415-28a5-d472" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Recon" hidden="false" id="e3a2-b6a6-db82-2576" targetId="2b65-a3f2-620a-dc58">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="9ddb-12eb-3f13-46b4"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Shock Assault" id="62d6-7629-4660-3353" hidden="true" sortIndex="7">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="fcfc-c183-da94-300e" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="6129-e18d-a8d9-f4a1" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="9207-6ee9-9b65-aa93" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Heavy Assault" hidden="false" id="c40f-0f72-7be9-5599" targetId="3235-bd79-e9b1-60fa">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="005a-3579-7c28-c686"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - First Strike" id="868e-f520-e3c3-d95c" hidden="true" sortIndex="8">
          <categoryLinks>
            <categoryLink name="Allegiance" hidden="false" id="8378-dbba-6d7a-966a" targetId="c408-52f1-b632-4c82">
              <constraints>
                <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="2505-5cbb-2cb6-28eb" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="9843-24e7-c9be-4c63" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Fast Attack" hidden="false" id="9997-e496-3110-286c" targetId="cf96-8891-3f9a-8921">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="90af-418b-f892-e8b7"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="0a35-fce3-188c-b3aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="0a35-fce3-188c-b3aa" shared="true"/>
                      </conditions>
                      <comment>DA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                      </conditions>
                      <comment>EC</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                      </conditions>
                      <comment>IW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d995-cb33-be41-ecf8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d995-cb33-be41-ecf8" shared="true"/>
                      </conditions>
                      <comment>SW</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f7b4-2531-0962-1379" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f7b4-2531-0962-1379" shared="true"/>
                      </conditions>
                      <comment>WS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d186-cffc-0950-f632" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="d186-cffc-0950-f632" shared="true"/>
                      </conditions>
                      <comment>IF</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="486f-b32a-ac87-73dd" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="486f-b32a-ac87-73dd" shared="true"/>
                      </conditions>
                      <comment>NL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9cff-ac34-56ca-260f" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9cff-ac34-56ca-260f" shared="true"/>
                      </conditions>
                      <comment>BA</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="736e-3967-e72b-e3ac" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="736e-3967-e72b-e3ac" shared="true"/>
                      </conditions>
                      <comment>IH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a956-190d-3b47-6258" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a956-190d-3b47-6258" shared="true"/>
                      </conditions>
                      <comment>WE</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="656a-07b6-d4fd-57af" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="656a-07b6-d4fd-57af" shared="true"/>
                      </conditions>
                      <comment>UM</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                      </conditions>
                      <comment>DG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2496-21e2-1870-e9b8" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2496-21e2-1870-e9b8" shared="true"/>
                      </conditions>
                      <comment>TS</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ac06-fcec-b634-5bd9" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="ac06-fcec-b634-5bd9" shared="true"/>
                      </conditions>
                      <comment>SH</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="4935-1832-63f7-91aa" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="4935-1832-63f7-91aa" shared="true"/>
                      </conditions>
                      <comment>WB</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="f148-a6e4-5a8c-3aeb" shared="true"/>
                      </conditions>
                      <comment>SL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="340c-1d4f-1f31-fb70" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="340c-1d4f-1f31-fb70" shared="true"/>
                      </conditions>
                      <comment>RG</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="8813-5298-c368-ee16" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8813-5298-c368-ee16" shared="true"/>
                      </conditions>
                      <comment>AL</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="7851-69ac-f701-034e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="7851-69ac-f701-034e" shared="true"/>
                      </conditions>
                      <comment>Auxilia</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="2f57-6e9d-8a7b-5c2e" shared="true"/>
                      </conditions>
                      <comment>Mechanicum</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="fd9b-d04e-362d-8e5d" shared="true"/>
                      </conditions>
                      <comment>Questoris</comment>
                    </conditionGroup>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="acc1-f897-a117-9b4a" shared="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="acc1-f897-a117-9b4a" shared="true"/>
                      </conditions>
                      <comment>Talons</comment>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
              <comment>Visible to all factions</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Tagmata Cohort" id="86c3-d6c6-5808-f7de" hidden="false" sortIndex="9">
          <categoryLinks>
            <categoryLink name="Support" hidden="false" id="184a-f7ba-9e0b-0344" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="force" shared="true" id="2c94-594a-7495-8c7c" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
        </forceEntry>
        <forceEntry name="Auxiliary - Apprentice Cadre" id="8298-6fba-36bb-3c13" hidden="false" sortIndex="10">
          <categoryLinks>
            <categoryLink name="Troops" hidden="false" id="3125-3815-2d65-6083" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="4" field="selections" scope="force" shared="true" id="1563-cfca-ec18-b863" includeChildSelections="true"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Troops" hidden="false" id="1f28-33ad-3ff7-a318" targetId="c3f9-a7f3-984b-3fda">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="f373-8abc-11b3-fd79" includeChildSelections="false"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
        </forceEntry>
        <forceEntry name="Auxiliary - Primacy Wing" id="523a-f6b1-5daf-ecb9" hidden="true">
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9a22-d01f-ab5c-ec07" shared="true"/>
                  </conditions>
                  <comment>EC</comment>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <categoryLinks>
            <categoryLink name="Retinue" hidden="false" id="f74a-93c0-6ba8-8c9a" targetId="a38e-50ff-310f-f19e">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2e0a-8634-21c1-d103"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Elites" hidden="false" id="7753-2aca-82e2-1c98" targetId="5d5e-958f-e388-50b5">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="de1b-7ca2-67e9-daa1"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Fast Attack" hidden="false" id="d089-c415-39b6-dd55" targetId="cf96-8891-3f9a-8921">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="2390-2f80-7f49-e06b"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
        </forceEntry>
        <forceEntry name="Auxiliary - The Ironfire Cohort" id="4ba5-46ff-9551-24db" hidden="true">
          <categoryLinks>
            <categoryLink name="Support" hidden="false" id="6faf-e9a7-067f-10e2" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="4d50-76f7-179e-1468"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Armour" hidden="false" id="6ae0-4d5c-adbd-d315" targetId="643a-1012-bd51-6537">
              <constraints>
                <constraint type="max" value="0" field="selections" scope="parent" shared="true" id="46d7-9538-0dca-2b3d"/>
              </constraints>
              <modifiers>
                <modifier type="increment" value="1" field="46d7-9538-0dca-2b3d">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="force" childId="e6e4-964a-5852-9c07" shared="true" includeChildSelections="true"/>
                  </conditions>
                </modifier>
                <modifier type="increment" value="1" field="46d7-9538-0dca-2b3d">
                  <conditions>
                    <condition type="equalTo" value="2" field="selections" scope="force" childId="e6e4-964a-5852-9c07" shared="true" includeChildSelections="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </categoryLink>
            <categoryLink name="Prime Armour" hidden="false" id="17aa-5415-f6fa-9dae" targetId="4460-7bc1-4d80-aecb">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="de2b-ad4e-f6f6-c3f5"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="21c0-18db-03dd-ae07" shared="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="parent" childId="21c0-18db-03dd-ae07" shared="true"/>
                  </conditions>
                  <comment>IW</comment>
                </conditionGroup>
              </conditionGroups>
              <comment>IW Only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
        <forceEntry name="Auxiliary - Reaping Host" id="6e76-77d0-8f69-a1c8" hidden="true">
          <categoryLinks>
            <categoryLink name="Support" hidden="false" id="b258-f13d-b8be-e320" targetId="345f-9ba6-9b02-ed5c">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="82e8-887b-5d61-0698"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Troops" hidden="false" id="8650-05f9-dd4b-715b" targetId="88e6-d373-4152-0dd8">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="5b85-79b4-2bef-8d6d"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Prime Troops" hidden="false" id="d98e-8875-854e-115c" targetId="c3f9-a7f3-984b-3fda">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="3e8e-e28e-4e42-cd05" includeChildSelections="false"/>
              </constraints>
            </categoryLink>
            <categoryLink name="Heavy Assault" hidden="false" id="af2a-e825-719d-dfcd" targetId="3235-bd79-e9b1-60fa">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="d1ba-84ea-6b14-45e1"/>
              </constraints>
            </categoryLink>
          </categoryLinks>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="be98-aa9d-64ef-f62c" shared="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="parent" childId="be98-aa9d-64ef-f62c" shared="true"/>
                  </conditions>
                  <comment>IW</comment>
                </conditionGroup>
              </conditionGroups>
              <comment>IW Only</comment>
            </modifier>
          </modifiers>
        </forceEntry>
      </forceEntries>
    </forceEntry>
    <forceEntry name="Lord of War Detachment" id="b7a1-629f-9d60-c2a9" hidden="false" sortIndex="3">
      <categoryLinks>
        <categoryLink name="Lord of War" hidden="false" id="3c0a-1455-992a-6156" targetId="a46f-a465-0ead-d6b8">
          <constraints>
            <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="d94c-54de-ba89-449a"/>
          </constraints>
        </categoryLink>
      </categoryLinks>
      <constraints>
        <constraint type="max" value="1" field="forces" scope="roster" shared="true" id="9507-42c6-32f3-dacf" includeChildSelections="false"/>
        <constraint type="max" value="0" field="9893-c379-920b-8982" scope="roster" shared="true" id="44b5-c573-a90a-3324" includeChildSelections="true" includeChildForces="true"/>
      </constraints>
      <modifiers>
        <modifier type="increment" value="1" field="44b5-c573-a90a-3324">
          <repeats>
            <repeat value="4" repeats="1" field="9893-c379-920b-8982" scope="roster" childId="any" shared="true" roundUp="false" includeChildSelections="true" includeChildForces="true"/>
          </repeats>
        </modifier>
      </modifiers>
    </forceEntry>
  </forceEntries>
  <selectionEntries>
    <selectionEntry type="upgrade" import="true" name="Allegiance" hidden="false" id="f775-2f81-bd18-2777">
      <entryLinks>
        <entryLink import="true" name="Allegiance" hidden="false" id="b7d2-7697-3dc2-210c" type="selectionEntryGroup" targetId="9fa8-cbae-ef5e-4b7c"/>
      </entryLinks>
      <constraints>
        <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="23e4-9237-6afd-776c" includeChildSelections="false"/>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="1233-3e93-8e2e-bca5" includeChildSelections="false"/>
      </constraints>
      <modifiers>
        <modifier type="add" value="1a65-8b23-419b-b30f" field="category">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="cc51-fdce-8a34-dbcf" shared="true"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="2965-5682-3cbc-8b47" shared="true"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="4a2f-ac9e-195e-77cf" shared="true"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bd1f-82a0-abd4-cd56" shared="true"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="edf5-6891-81d8-6309" shared="true"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="c9a5-3069-920b-32f1" shared="true"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="c444-8242-d3fc-b5b0" shared="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="add" value="6b46-02bb-c8aa-142d" field="category">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="7203-426e-7a82-0b01" shared="true"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="90b7-c0fa-a9e1-6765" shared="true"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="0690-c05e-c301-f595" shared="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <categoryLinks>
        <categoryLink name="Allegiance" hidden="false" id="5a4a-744e-eecc-1e4a" targetId="c408-52f1-b632-4c82" primary="true"/>
      </categoryLinks>
    </selectionEntry>
    <selectionEntry type="upgrade" import="true" name="Getting Started - Add the crusade primary detachment from the detachments section." hidden="false" id="8343-6431-55a2-fa6e" defaultAmount="1">
      <categoryLinks>
        <categoryLink targetId="c5ac-45c2-a8a9-e32c" id="634b-1cfa-5d38-8e47" primary="true" name="Open Beta Release"/>
      </categoryLinks>
      <constraints>
        <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="e075-1f6c-ff36-8e11" includeChildSelections="false"/>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="6955-fe83-aea4-d73f" includeChildSelections="false"/>
      </constraints>
    </selectionEntry>
    <selectionEntry type="upgrade" import="true" name="DON&apos;T SUBMIT BUGS FOR NOT IMPLEMENTED FUNCTIONALITY. See export for list." hidden="false" id="cd4a-d335-2d3a-91e0" defaultAmount="1">
      <rules>
        <rule name="Things that aren&apos;t implemented" id="10ac-cafa-6c21-0fa3" hidden="false">
          <description>Knights
Solar Aux
A lot of detachment validation beyond the basic ones.
Legion primes and legion wargear.


A ton of other small stuff.


Please don&apos;t submit bug reports for any of these things</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink targetId="c5ac-45c2-a8a9-e32c" id="c2fc-1eaf-255b-2b13" primary="true" name="Open Beta Release"/>
      </categoryLinks>
      <constraints>
        <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="27a5-7dd1-f626-57f9" includeChildSelections="false"/>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="b79e-e467-7f12-4fae" includeChildSelections="false"/>
      </constraints>
    </selectionEntry>
  </selectionEntries>
  <publications>
    <publication name="Horus Heresy - 3rd Edition Core Rulebook" id="7d63-5df4-c656-52de" hidden="false" shortName="CRB 3.0" publisher="Horus Heresy - 3rd Edition Core Rulebook"/>
    <publication name="Horus Heresy - Liber Astartes 3rd Edition" id="b905-0414-1057-bb34" hidden="false" shortName="LA 3.0" publisher="Horus Heresy - Liber Astartes 3rd Edition"/>
    <publication name="Horus Heresy - Liber Hereticus 3rd Edition" id="e54c-7040-0f35-d85d" hidden="false" shortName="LH 3.0" publisher="Horus Heresy - Liber Hereticus 3rd Edition"/>
    <publication name="Horus Heresy - Liber Auxilia 3rd Edition" id="adda-966f-f129-ed26" hidden="false" shortName="LX 3.0" publisher="Horus Heresy - Liber Auxilia 3rd Edition"/>
    <publication name="Horus Heresy - Liber Questoris 3rd Edition" id="5a4b-8b0e-caa6-c7ed" hidden="false" shortName="LQ 3.0" publisher="Horus Heresy - Liber Questoris 3rd Edition"/>
    <publication name="Journal Tactica - The Isstvan V Dropsite Massacre (Part One)" id="10e2-87c7-4862-2cc4" hidden="false" shortName="JT - Isstvan V pt.1" publisher="Journal Tactica - The Isstvan V Dropsite Massacre (Part One)"/>
    <publication name="Legacies of the Age of Darkness - 3rd Edition" id="5469-14da-d0a1-6092" hidden="false" shortName="LAoD 3.0" publisher="Legacies of the Age of Darkness 3rd Edition"/>
    <publication name="Horus Heresy - Talons of the Emperor 3rd Edition" id="09c6-1c1d-03a7-9556" hidden="false" shortName="TE 3.0" publisher="Horus Heresy - Talons of the Emperor 3rd Edition"/>
    <publication name="Github" id="e0e7-6fcd-7ee7-448d" hidden="false" publisherUrl="https://github.com/BSData/horus-heresy-3rd-edition" shortName="Github"/>
  </publications>
  <costTypes>
    <costType name="Point(s)" id="9893-c379-920b-8982" defaultCostLimit="-1"/>
    <costType name="Asset Point(s)" id="57e3-1031-7d4d-5ae3" defaultCostLimit="-1" hidden="true"/>
    <costType name="Reaction Point(s)" id="c9ba-097e-c47f-ecc2" defaultCostLimit="-1" hidden="true"/>
  </costTypes>
  <profileTypes>
    <profileType name="Profile" id="a76f-8e23-8c3e-166d" hidden="false" sortIndex="1">
      <characteristicTypes>
        <characteristicType name="Unit Type" id="50fc-9241-d4a2-045b"/>
        <characteristicType name="M" id="a106-a779-d272-5e93"/>
        <characteristicType name="WS" id="253c-d694-4695-c89e"/>
        <characteristicType name="BS" id="0cd5-b269-e3bc-028b"/>
        <characteristicType name="S" id="498f-dce1-59fd-d8d7"/>
        <characteristicType name="T" id="3120-8275-e537-ecd2"/>
        <characteristicType name="W" id="f5cc-79a3-d302-cc1d"/>
        <characteristicType name="I" id="af9d-7db8-dc95-71c1"/>
        <characteristicType name="A" id="024e-bdb1-7982-25a0"/>
        <characteristicType name="LD" id="02ad-ebe6-86e7-9fd6"/>
        <characteristicType name="CL" id="9cd1-0e7c-2cd6-5f2f"/>
        <characteristicType name="WP" id="f714-1726-37d3-44df"/>
        <characteristicType name="IN" id="29c5-925d-5b1d-1e77"/>
        <characteristicType name="SAV" id="03bd-4ecb-351d-143b"/>
        <characteristicType name="INV" id="a951-a772-7ce0-0b64"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Ranged Weapon" id="c591-09ed-3e6f-eb2b" hidden="false" sortIndex="10">
      <characteristicTypes>
        <characteristicType name="R" id="cdb0-8654-6840-1037"/>
        <characteristicType name="FP" id="5037-1f27-1790-e355"/>
        <characteristicType name="RS" id="b9da-ee13-79f9-fa63"/>
        <characteristicType name="AP" id="7a23-0248-2b94-5951"/>
        <characteristicType name="D" id="88c3-1ca5-7dc1-f291"/>
        <characteristicType name="Special Rules" id="5aad-137a-8ee2-63fd"/>
        <characteristicType name="Traits" id="1247-79d2-6cc1-8a03"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Melee Weapon" id="3587-6dcd-005c-c263" hidden="false" sortIndex="11">
      <characteristicTypes>
        <characteristicType name="IM" id="6eec-4093-f946-1014"/>
        <characteristicType name="AM" id="03d0-6094-84f0-e27e"/>
        <characteristicType name="SM" id="4505-de6f-d4ae-6280"/>
        <characteristicType name="AP" id="a014-126b-3b7b-27e8"/>
        <characteristicType name="D" id="6a9d-4feb-065a-33e7"/>
        <characteristicType name="Special Rules" id="ebe0-7b28-b40c-694e"/>
        <characteristicType name="Traits" id="76e3-c188-bc65-3467"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Reaction" id="c14c-ecfd-ea65-58c9" hidden="false" sortIndex="16">
      <characteristicTypes>
        <characteristicType name="Summary" id="5d02-0e54-0f6a-0f0b"/>
        <characteristicType name="Trigger" id="02e4-3f90-3125-f8b4"/>
        <characteristicType name="Cost" id="954a-972f-5c94-2ede"/>
        <characteristicType name="Target" id="e102-8fdd-9cd4-c0f9"/>
        <characteristicType name="Process" id="57cf-1c68-a020-2529"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Vehicle" id="2a80-eec8-a736-2fe3" hidden="false" sortIndex="2">
      <characteristicTypes>
        <characteristicType name="Type" id="827f-9ce2-2118-e134"/>
        <characteristicType name="M" id="d624-72fe-0205-4443"/>
        <characteristicType name="BS" id="a17e-8e7d-d21f-c138"/>
        <characteristicType name="Front Armour" id="6536-e73d-4a74-c675"/>
        <characteristicType name="Side Armour" id="f03a-18a7-8586-273d"/>
        <characteristicType name="Rear Armour" id="ec84-1f5d-1bb3-6826"/>
        <characteristicType name="HP" id="8735-4497-1f8a-4dda"/>
        <characteristicType name="Transport Capacity" id="a82e-858c-9aa9-2b43"/>
        <characteristicType name="Access Points" id="ffe7-e997-ea4e-6c2d"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Wargear" id="5ec5-e0c3-1701-6f16" hidden="false" sortIndex="14">
      <characteristicTypes>
        <characteristicType name="Summary" id="8e7d-a0ae-fd85-983c"/>
        <characteristicType name="Description" id="9944-2f6d-d61b-03b5"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Warlord Trait" id="958f-cc14-b252-7179" hidden="false" sortIndex="15">
      <characteristicTypes>
        <characteristicType name="Description" id="8086-8fe7-1456-e180"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Asset" id="7ae0-de68-04c6-8d8f" hidden="false" sortIndex="8">
      <characteristicTypes>
        <characteristicType name="Summary" id="3dcf-9034-fc2d-cd56"/>
        <characteristicType name="Setup" id="e965-60bc-cd79-63e7"/>
        <characteristicType name="Effect" id="bbd3-5482-ed3a-a3b3"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Traits" id="d5a9-9164-1e30-7a35" hidden="false" sortIndex="9">
      <characteristicTypes>
        <characteristicType name="Description" id="d5eb-0b8b-0f26-6233"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Knight" id="f99e-9f4d-2075-5a0a" hidden="false" sortIndex="3">
      <characteristicTypes>
        <characteristicType name="M" id="5c03-7611-0933-bd64"/>
        <characteristicType name="WS" id="dde5-e5bd-3253-000c"/>
        <characteristicType name="BS" id="ba34-f6fb-6bdb-c847"/>
        <characteristicType name="S" id="fec9-962a-96e4-62cf"/>
        <characteristicType name="Front" id="49c5-6008-40ba-3781"/>
        <characteristicType name="Rear" id="c974-3f7c-76d2-98a3"/>
        <characteristicType name="I" id="f93c-1749-e2e9-3ab1"/>
        <characteristicType name="A" id="2903-ca70-471c-2741"/>
        <characteristicType name="HP" id="c427-cd22-b0d1-4db7"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Titan Head" id="2e7a-2e4d-dfb2-6b7a" hidden="false" sortIndex="4">
      <characteristicTypes>
        <characteristicType name="M" id="2166-88df-f710-af3f"/>
        <characteristicType name="BS" id="c495-b16a-f24d-b6a5"/>
        <characteristicType name="Primary Armour" id="ca2b-9e3d-6d2b-50bb"/>
        <characteristicType name="Exposed Armour" id="8a30-5814-b7f7-9bcd"/>
        <characteristicType name="HP" id="2446-14c8-bcb4-40fd"/>
        <characteristicType name="Transport Capacity" id="f02f-a705-84f7-21c6"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Titan Carapace" id="427a-1e14-5a35-588b" hidden="false" sortIndex="5">
      <characteristicTypes>
        <characteristicType name="M" id="da45-6b40-46b7-6fe0"/>
        <characteristicType name="BS" id="7ecd-00b1-f94c-ae3c"/>
        <characteristicType name="Primary Armour" id="d9bf-1a6a-e602-86ef"/>
        <characteristicType name="Exposed Armour" id="f2a7-27bd-8ae2-8768"/>
        <characteristicType name="HP" id="fb1e-e851-064a-b34d"/>
        <characteristicType name="Transport Capacity" id="33b6-b172-e137-87f3"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Titan Legs" id="196d-8bef-a3cc-336f" hidden="false" sortIndex="7">
      <characteristicTypes>
        <characteristicType name="M" id="b47b-b784-9940-5202"/>
        <characteristicType name="BS" id="006d-8179-3295-e411"/>
        <characteristicType name="Primary Armour" id="faaa-3813-1265-a640"/>
        <characteristicType name="Exposed Armour" id="3c60-53f6-a92f-dd4c"/>
        <characteristicType name="HP" id="553f-359d-d3b0-f561"/>
        <characteristicType name="Transport Capacity" id="acd3-8efe-0a62-70f8"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Titan Arms" id="90d7-6d94-1c6a-fe28" hidden="false" sortIndex="6">
      <characteristicTypes>
        <characteristicType name="M" id="db3f-53ef-08a8-c0fb"/>
        <characteristicType name="BS" id="082d-2db1-c27a-ec76"/>
        <characteristicType name="Primary Armour" id="cde4-2cb6-25ce-18e3"/>
        <characteristicType name="Exposed Armour" id="4a56-a48e-e6db-05b4"/>
        <characteristicType name="HP" id="5f7d-4f9b-8d00-8dd7"/>
        <characteristicType name="Transport Capacity" id="7df3-dabd-eed0-50bf"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Gambit:" id="9b5f-da4e-5739-cbcf" hidden="false" sortIndex="19">
      <characteristicTypes>
        <characteristicType name="Summary" id="98f3-41cf-e3be-2ae7"/>
        <characteristicType name="Description" id="2d7d-b1d9-dead-605a"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Cybertheurgic Rite:" id="230a-eef9-447d-6623" hidden="false" sortIndex="20">
      <characteristicTypes>
        <characteristicType name="Difficulty:" id="0c1a-8118-86ae-28a7"/>
        <characteristicType name="Range:" id="b98e-e5fa-6a28-2efe"/>
        <characteristicType name="Restrictions:" id="d3e5-69ce-a8d9-97db"/>
        <characteristicType name="Effect:" id="dae4-c869-d27c-9025"/>
        <characteristicType name="Duration:" id="7c83-ff4d-0f5a-55b3"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup name="Common Prime Benefits" id="93f7-d7db-d7f0-2146" hidden="false">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Combat Veterans" hidden="false" id="8cf8-9be5-91d6-c96d" sortIndex="2">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="0c80-9611-b710-0ca4" includeChildSelections="false"/>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="3b6f-8c9d-27b5-9f5d" includeChildSelections="false"/>
          </constraints>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Special Assignment" hidden="false" id="c857-47bd-6a4f-fcf8" sortIndex="4">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="3b7d-6d09-95fd-18ae" includeChildSelections="false"/>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="97a9-ea67-739b-69bd" includeChildSelections="false"/>
          </constraints>
          <categoryLinks>
            <categoryLink targetId="c85c-2963-658f-1bb9" id="c1dc-0919-397c-4986" primary="false" name="Prime Command"/>
          </categoryLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Master Sergeant" hidden="false" id="2c90-1d52-7075-59d3" sortIndex="1">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="6282-9945-7fff-a114"/>
          </constraints>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Paragon of Battle" hidden="false" id="20cb-4eec-0844-8a97" sortIndex="3">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="efed-cc57-2cf2-5b68"/>
          </constraints>
        </selectionEntry>
      </selectionEntries>
      <selectionEntryGroups>
        <selectionEntryGroup name="Logistical Benefit" id="52ae-1a80-a764-d4fd" hidden="false" sortIndex="5">
          <selectionEntries>
            <selectionEntry type="upgrade" import="true" name="LB - Armour" hidden="false" id="d5b0-22dc-909e-415e" sortIndex="9">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="0db1-a2a7-6d9e-b148" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="050b-9439-a00e-a4e2" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="LB - Retinue" hidden="false" id="e788-1cee-dabe-1e19" sortIndex="1">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="13bf-7b59-1665-9e36" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="df5e-6418-a9e0-3078" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="LB - Elites" hidden="false" id="d81c-494b-0302-5844" sortIndex="2">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="24a2-e625-7282-246d" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="3903-06b5-4d86-5b2d" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="LB - Support" hidden="false" id="18ed-afc2-ec5d-9f8c" sortIndex="5">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="9c44-782a-2ef3-0004" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="ef0e-3664-9ed9-7d9e" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="LB - Recon" hidden="false" id="a166-27df-d75c-bdb0" sortIndex="10">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="17c1-2b67-e8f4-a7d5" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="1efe-0dc4-ba36-4869" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="LB - Transport" hidden="false" id="861f-723a-938e-bc2c" sortIndex="6">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="eef4-75c6-6e46-abeb" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="21d9-6bd0-6fbc-361b" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="LB - Troops" hidden="false" id="9e8c-63b6-a15a-cd4f" sortIndex="4">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="de1b-0596-8e4b-1bcb" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="f0ac-3456-a58b-a20e" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="LB - War-engine" hidden="false" id="fac3-0af2-8be3-20dc" sortIndex="3">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="053a-6c68-4d95-6d97" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="62b9-f46a-e800-8cda" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="LB - Heavy Transport" hidden="false" id="ad55-0e60-66fe-a7a9" sortIndex="8">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="ce13-cd95-3142-d1b9" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="cc81-071c-ce46-dd5e" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="LB - Fast Attack" hidden="false" id="cf0d-0aff-8242-f25a" sortIndex="11">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="221e-c77a-62ae-8722" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="42ec-9172-02d4-c916" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="LB - Heavy Assault" hidden="false" id="5da8-2289-4e20-649f" sortIndex="7">
              <constraints>
                <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="1775-19f7-0b1b-1504" includeChildSelections="false"/>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="9af8-13d7-add0-7730" includeChildSelections="false"/>
              </constraints>
            </selectionEntry>
          </selectionEntries>
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="6418-a8e5-3a25-83dc" includeChildSelections="false"/>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="5c95-ec90-af36-8004" includeChildSelections="false"/>
            <constraint type="max" value="1" field="selections" scope="force" shared="true" id="d574-1fa6-b963-dd84" includeChildSelections="false"/>
          </constraints>
        </selectionEntryGroup>
      </selectionEntryGroups>
    </selectionEntryGroup>
    <selectionEntryGroup name="Allegiance" id="9fa8-cbae-ef5e-4b7c" hidden="false">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Loyalist" hidden="false" id="e1e1-a344-d3e2-0b91"/>
        <selectionEntry type="upgrade" import="true" name="Traitor" hidden="false" id="597e-83d8-32e1-8eaa"/>
      </selectionEntries>
      <constraints>
        <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="2516-7312-a1b5-52fd" includeChildSelections="false"/>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="a9e2-2b29-1e6c-e10c" includeChildSelections="false"/>
      </constraints>
    </selectionEntryGroup>
  </sharedSelectionEntryGroups>
  <sharedRules>
    <rule name="Infantry Unit Type" id="d518-ea26-a708-e6a1" hidden="false"/>
    <rule name="Walker Unit Type" id="a4d9-6b9e-822f-d40b" hidden="false"/>
    <rule name="Vehicle Unit Type" id="3fc1-3428-792e-2703" hidden="false"/>
    <rule name="Heavy Unit Sub-type" id="7d35-4d6f-c4fe-4aac" hidden="false"/>
    <rule name="Sergeant Unit Sub-type" id="de7e-d90d-ffb6-c740" hidden="false"/>
    <rule name="Command Unit Sub-type" id="7b6d-2e0d-8659-252d" hidden="false"/>
  </sharedRules>
  <sharedProfiles>
    <profile name="New Profile" typeId="e7bb-e864-2195-b3f7" typeName="Cybertheurgic Rite" hidden="false" id="bd82-19b9-0923-5da2">
      <characteristics>
        <characteristic name="Difficulty:" typeId="86d3-2d27-fd61-d020"/>
        <characteristic name="Range:" typeId="af46-4595-7eda-1c84"/>
      </characteristics>
    </profile>
  </sharedProfiles>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Prime Unit" hidden="false" id="3fa2-78b1-637f-7fb2">
      <modifiers>
        <modifier type="add" value="c85c-2963-658f-1bb9" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="6dbf-654a-f06f-2d69" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="276f-7a07-a56c-affd" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="5d5e-958f-e388-50b5" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="c66b-ef39-b20f-725b" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="a38e-50ff-310f-f19e" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="c3f9-a7f3-984b-3fda" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="88e6-d373-4152-0dd8" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="9699-67c9-2c0b-e64b" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="2499-7239-685f-8465" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="1c79-ecdf-9a64-84c9" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="345f-9ba6-9b02-ed5c" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="fc27-1a48-84ae-aa7b" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="d162-4711-5d60-0a48" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="1e95-35f0-1353-ffa1" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="3235-bd79-e9b1-60fa" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="abff-3686-c39a-9a24" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="52d0-8b78-439e-18e5" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="4460-7bc1-4d80-aecb" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="643a-1012-bd51-6537" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="6348-ecd0-714d-042a" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="2b65-a3f2-620a-dc58" shared="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="c291-144b-3da6-37ed" field="category">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="cf96-8891-3f9a-8921" shared="true"/>
          </conditions>
        </modifier>
      </modifiers>
      <constraints>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="358b-c4f7-9bf0-406b"/>
        <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="881f-5dbe-10fd-ec48"/>
      </constraints>
    </selectionEntry>
  </sharedSelectionEntries>
</gameSystem>

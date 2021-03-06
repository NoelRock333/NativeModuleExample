/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View,
  Button,
  NativeModules
} from 'react-native';

console.log(NativeModules);  // ← add this line

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});


export default class App extends Component<{}> {
  fire = () => {
    NativeModules.MyNativeMethods.calcAverage([1,2,3,4,5,5], (result) => {
      console.log(result)
    });
    // if (Platform.OS == 'ios') {
    //   console.log(NativeModules.CalendarManager);
    //   NativeModules.CalendarManager.addEvent("One", "Two", 3, function(o) {
    //     console.log("In Callback");
    //     console.log(o);
    //   });
    // } else {
    //   console.log(NativeModules.ToastExample);
    //   NativeModules.ToastExample.addEvent('Awesome', "Android", 5, function(o) {
    //     console.log("In Callback");
    //     console.log(o);
    //   });
    // }
  }

  render() {
    return (
      <View style={styles.container}>
        <Button title="Fire!" onPress={this.fire}/>
        <Text style={styles.welcome}>
        </Text>
        <Text style={styles.instructions}>
          To get started, edit App.js
        </Text>
        <Text style={styles.instructions}>
          {instructions}
        </Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

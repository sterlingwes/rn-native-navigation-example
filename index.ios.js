import React from 'react'
import {
  AppRegistry,
  StyleSheet,
  Text,
  View
} from 'react-native'

class RNView extends React.Component {
  render () {
    const { helloTarget } = this.props
    return (
      <View style={styles.container}>
        <Text style={styles.item}>
          Hello {helloTarget}, from React Native
        </Text>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF'
  },
  item: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
    fontSize: 20,
  }
})

// Module name
AppRegistry.registerComponent('RNView', () => RNView)

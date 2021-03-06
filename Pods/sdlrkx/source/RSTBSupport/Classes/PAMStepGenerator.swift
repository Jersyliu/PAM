//
//  PAMStepGenerator.swift
//  Pods
//
//  Created by James Kizer on 1/10/17.
//
//

import ResearchSuiteTaskBuilder
import ResearchKit
import Gloss

open class PAMStepGenerator: RSTBBaseStepGenerator {
    public init(){}
    
    let _supportedTypes = [
        "PAM"
    ]
    
    public var supportedTypes: [String]! {
        return self._supportedTypes
    }
    
    open func generateStep(type: String, jsonObject: JSON, helper: RSTBTaskBuilderHelper) -> ORKStep? {
        
        guard let customStepDescriptor = helper.getCustomStepDescriptor(forJsonObject: jsonObject) else {
            return nil
        }
        
        return PAMStep.create(identifier: customStepDescriptor.identifier)
    }
    
    open func processStepResult(type: String,
                                jsonObject: JsonObject,
                                result: ORKStepResult,
                                helper: RSTBTaskBuilderHelper) -> JSON? {
        return nil
    }
}

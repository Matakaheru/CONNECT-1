/*
 * Copyright (c) 2009-2015, United States Government, as represented by the Secretary of Health and Human Services.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above
 *       copyright notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the documentation
 *       and/or other materials provided with the distribution.
 *     * Neither the name of the United States Government nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE UNITED STATES GOVERNMENT BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
package gov.hhs.fha.nhinc.docretrieve.entity.proxy;

import gov.hhs.fha.nhinc.common.nhinccommon.AssertionType;
import gov.hhs.fha.nhinc.common.nhinccommon.NhinTargetCommunitiesType;
import gov.hhs.fha.nhinc.common.nhinccommonentity.RespondingGatewayCrossGatewayRetrieveRequestType;
import gov.hhs.fha.nhinc.docretrieve.entity.proxy.service.EntityDocRetrieveUnsecuredServicePortDescriptor;
import gov.hhs.fha.nhinc.entitydocretrieve.EntityDocRetrieve;
import gov.hhs.fha.nhinc.entitydocretrieve.EntityDocRetrievePortType;
import gov.hhs.fha.nhinc.messaging.client.CONNECTCXFClientFactory;
import gov.hhs.fha.nhinc.messaging.client.CONNECTClient;
import gov.hhs.fha.nhinc.messaging.service.port.ServicePortDescriptor;
import gov.hhs.fha.nhinc.nhinclib.NhincConstants;
import gov.hhs.fha.nhinc.nhinclib.NullChecker;
import gov.hhs.fha.nhinc.webserviceproxy.WebServiceProxyHelper;
import ihe.iti.xds_b._2007.RetrieveDocumentSetRequestType;
import ihe.iti.xds_b._2007.RetrieveDocumentSetResponseType;

import org.apache.log4j.Logger;

/**
 *
 * Entity DocumentRetrieve Unsecured implementation returns the RetrieveDocumentSetResponseType Response.
 *
 * @author dunnek
 */
public class EntityDocRetrieveProxyWebServiceUnsecuredImpl implements EntityDocRetrieveProxy {

    private static final Logger LOG = Logger.getLogger(EntityDocRetrieveProxyWebServiceUnsecuredImpl.class);

    /**
     *
     * @return generated EntityDocRetrieve service
     */
    protected EntityDocRetrieve getWebService() {
        return new EntityDocRetrieve();
    }

    /**
     * The returned document will be having MTOM inline document attachment.
     *
     * @param body RetrieveDocumentSetRequestType DocumentRetrieve Request
     * @param assertion Assertion object having assertion values
     * @param targets NhinTarget Communities
     * @return RetrieveDocumentSetResponseType Document Retrieve Response.
     */
    @Override
    public RetrieveDocumentSetResponseType respondingGatewayCrossGatewayRetrieve(RetrieveDocumentSetRequestType body,
        AssertionType assertion, NhinTargetCommunitiesType targets) {
        RetrieveDocumentSetResponseType response = null;

        String serviceName = NhincConstants.ENTITY_DOC_RETRIEVE_PROXY_SERVICE_NAME;
        String url = this.getUrl(serviceName);
        if (NullChecker.isNotNullish(url)) {
            RespondingGatewayCrossGatewayRetrieveRequestType message = new RespondingGatewayCrossGatewayRetrieveRequestType();
            message.setAssertion(assertion);
            message.setNhinTargetCommunities(targets);
            message.setRetrieveDocumentSetRequest(body);

            ServicePortDescriptor<EntityDocRetrievePortType> portDescriptor = new EntityDocRetrieveUnsecuredServicePortDescriptor();
            CONNECTClient<EntityDocRetrievePortType> client = getCONNECTClientUnsecured(portDescriptor, url, assertion);

            try {
                LOG.debug("invoke port");
                response = (RetrieveDocumentSetResponseType) client.invokePort(EntityDocRetrievePortType.class, "respondingGatewayCrossGatewayRetrieve", message);
            } catch (Exception ex) {
                LOG.error("Failed to call the web service (" + serviceName + ").  An unexpected exception occurred.  "
                    + "Exception: " + ex.getMessage(), ex);
            }
        }
        return response;

    }

    /**
     * This method returns the url of the provided service.
     *
     * @param serviceName to make a look up on ConnectionInfo files.
     * @return String url from the ConnectionInfo files.
     */
    protected String getUrl(String serviceName) {
        String result = "";
        try {
            result = this.getWebServiceProxyHelper().getUrlLocalHomeCommunity(serviceName);
        } catch (Exception ex) {
            LOG.warn("Unable to retreive url for service: " + serviceName);
            LOG.warn("Error: " + ex.getMessage(), ex);
        }

        return result;
    }

    /**
     *
     * @return WebServiceProxyHelper
     */
    protected WebServiceProxyHelper getWebServiceProxyHelper() {
        return new WebServiceProxyHelper();
    }

    /**
     * This method returns the unsecured cxf client to make Entity calls.
     *
     * @param portDescriptor ServicePortDescriptor to get client
     * @param url endpoint url of the service
     * @param assertion Assertion object having assertion values.
     * @return
     */
    protected CONNECTClient<EntityDocRetrievePortType> getCONNECTClientUnsecured(
        ServicePortDescriptor<EntityDocRetrievePortType> portDescriptor, String url, AssertionType assertion) {

        return CONNECTCXFClientFactory.getInstance().getCONNECTClientUnsecured(portDescriptor, url, assertion);
    }
}
import { defineStore } from 'pinia';
import axios from "axios";

export const productTimestamp = defineStore('productTimestamp', {
    state: () => ({
        clickedProducts: [] as { productId: string; timestamp: string }[],
    }),

    actions: {
        async addClickedProduct(productId: string) {
            this.clickedProducts.push({
                productId: productId,
                timestamp: new Date().toISOString(),
            });

            // Call setProductTimestamp to send the data to the server
            await this.setProductTimestamp(productId);
        },

        async setProductTimestamp(productId: string) {
            try {
                const timestamp = new Date().toISOString();
                const response = await axios.post(`http://localhost:8000/api/products/set/${productId}/${timestamp}`);

                console.log('Timestamp saved successfully:', response.data);
            } catch (error) {
                console.error('Error saving product timestamp:', error);
            }
        },
    },
});


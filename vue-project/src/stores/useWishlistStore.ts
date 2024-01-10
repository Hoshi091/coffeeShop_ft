import { defineStore } from 'pinia';

export const useWishlistStore = defineStore('wishlist', {
    state: () => ({
        wishlist: [] as { id: string; name: string; image: string; price: number }[],
    }),

    actions: {
        addToWishlist(product: { id: string; name: string; image: string; price: number }) {
            if (!this.wishlist.some(item => item.id === product.id)) {
                this.wishlist.push(product);
            }
        },

        removeFromWishlist(productId: string) {
            const index = this.wishlist.findIndex(item => item.id === productId);
            if (index !== -1) {
                this.wishlist.splice(index, 1);
            }
        },
    },
});

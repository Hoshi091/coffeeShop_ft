import { defineStore } from 'pinia';

export const useWishlistStore = defineStore('wishlist', {
    state: () => ({
        wishlist: [] as { id: string; name: string; image: string; price: number }[],
    }),

    actions: {
        toggleWishlist(product: { id: string; name: string; image: string; price: number }) {
            const index = this.wishlist.findIndex(item => item.id === product.id);

            if (index !== -1) {
                this.wishlist.splice(index, 1);
            } else {
                this.wishlist.push(product);
            }
        },

        isInWishlist(productId: string): boolean {
            return this.wishlist.some(item => item.id === productId);
        },
    },
});

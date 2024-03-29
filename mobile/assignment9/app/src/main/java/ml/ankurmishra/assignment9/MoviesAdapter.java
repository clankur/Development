package ml.ankurmishra.assignment9;

/**
 * Created by ankurM on 11/9/17.
 */

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

public class MoviesAdapter extends RecyclerView.Adapter<MoviesAdapter.MyViewHolder> {

    private List<Movie> moviesList;
    private MoviesAdapterInterface mCallback;
    private Context context;
    public Movie currentItem;
    public class MyViewHolder extends RecyclerView.ViewHolder {
        public TextView title, year, genre;
        private Context context;
        public MyViewHolder(View view, Context context) {
            super(view);
            this.context = context;

            title = (TextView) view.findViewById(R.id.title);
            genre = (TextView) view.findViewById(R.id.genre);
            year = (TextView) view.findViewById(R.id.year);

            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    int pos = getAdapterPosition();

                    // check if item still exists
                    if(pos != RecyclerView.NO_POSITION){
                        currentItem = moviesList.get(pos);
                        Toast.makeText(v.getContext(), "You clicked " + currentItem.getTitle(), Toast.LENGTH_SHORT).show();
                        mCallback.setCurrentItem(currentItem);
                    }
                }
            });
        }

    }


    public MoviesAdapter(List<Movie> moviesList) {
        this.moviesList = moviesList;
        currentItem = moviesList.get(0);
    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.movie_list_row, parent, false);
        context = parent.getContext();
        mCallback = (MoviesAdapterInterface) context;
        return new MyViewHolder(itemView, context);
    }

    @Override
    public void onBindViewHolder(MyViewHolder holder, int position) {
        Movie movie = moviesList.get(position);
        holder.title.setText(movie.getTitle());
        holder.genre.setText(movie.getGenre());
        holder.year.setText(movie.getYear());
    }

    @Override
    public int getItemCount() {
        return moviesList.size();
    }

    public interface MoviesAdapterInterface {
        void setCurrentItem(Movie currentItem);
    }
}

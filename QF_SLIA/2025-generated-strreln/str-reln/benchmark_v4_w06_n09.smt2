(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "3") (re.union (str.to_re "51") (str.to_re "646"))))))
(assert (str.in_re y (re.* (re.++ (re.range "6" "9") (re.++ (str.to_re "417") (re.range "1" "6"))))))
(assert (str.in_re z (re.union (str.to_re "44") (re.union (re.* (str.to_re "773")) (str.to_re "47")))))
(assert (str.in_re a (re.union (re.+ (str.to_re "34")) (re.union (re.* (str.to_re "618")) (str.to_re "795")))))

(assert (<= (+ (* 8 (str.len x)) (* (- 8) (str.len y)) (* (- 3) (str.to_int x)) (* (- 10) (str.to_int y)) (* 7 (str.to_int z))) 84))
(assert (< (+ (* (- 5) (str.len y)) (* (- 8) (str.len z)) (* (- 6) (str.len a))) 6))
(assert (>= (+ (* (- 4) (str.to_int x)) (* (- 5) (str.to_int y)) (str.to_int z) (* (- 3) (str.to_int a))) 74))
(assert (<= (+ (* 4 (str.len x)) (* 10 (str.len z)) (* (- 5) (str.to_int y))) 46))

(check-sat)
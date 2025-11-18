(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.+ (str.to_re "505"))))
(assert (str.in_re y (re.+ (str.to_re "838"))))
(assert (str.in_re z (re.++ (re.* (str.to_re "8")) (re.++ (re.range "0" "5") (re.+ (str.to_re "68"))))))
(assert (str.in_re a (re.* (re.union (str.to_re "7") (str.to_re "6")))))
(assert (str.in_re b (re.union (str.to_re "294") (re.union (re.* (re.+ (str.to_re "933"))) (str.to_re "62")))))

(assert (> (+ (* 8 (str.len x)) (- (str.len y)) (* 5 (str.len z)) (* 6 (str.len a)) (* 10 (str.len b))) 45))
(assert (< (+ (* (- 3) (str.len x)) (str.len y) (str.len z) (str.len a) (* 8 (str.len b))) 25))
(assert (>= (+ (* (- 9) (str.len a)) (* 5 (str.to_int x)) (* (- 6) (str.to_int z))) 46))
(assert (<= (+ (* 2 (str.to_int x)) (* 10 (str.to_int y)) (* (- 3) (str.to_int z)) (* 3 (str.to_int b))) 59))
(assert (> (+ (* 4 (str.len x)) (* (- 9) (str.len z)) (* 9 (str.len a)) (* (- 6) (str.len b))) 94))

(check-sat)
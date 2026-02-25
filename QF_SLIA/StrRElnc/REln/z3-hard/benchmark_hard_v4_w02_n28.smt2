(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.union (str.to_re "87") (re.union (re.+ (str.to_re "6")) (re.+ (re.range "0" "9"))))))
(assert (str.in_re x (re.+ (re.union (re.range "4" "9") (re.union (re.range "4" "9") (str.to_re "381"))))))
(assert (str.in_re a (re.union (re.+ (str.to_re "801")) (re.+ (re.* (str.to_re "733"))))))
(assert (str.in_re y (re.++ (str.to_re "342") (re.* (re.++ (re.+ (str.to_re "12")) (str.to_re "47"))))))

(assert (> (+ (* 5 (str.len x)) (* (- 9) (str.len y)) (* 2 (str.len z)) (* (- 4) (str.len a))) 66))
(assert (= (+ (* 10 (str.to_int x)) (* 8 (str.to_int y)) (* 10 (str.to_int z)) (str.to_int a)) 77))

(check-sat)
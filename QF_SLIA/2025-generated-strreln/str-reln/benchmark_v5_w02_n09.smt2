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

(assert (str.in_re x (re.union (re.union (str.to_re "8") (re.* (str.to_re "6"))) (str.to_re "51"))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "1") (re.union (re.+ (str.to_re "654")) (re.range "1" "8"))))))
(assert (str.in_re z (re.union (re.* (str.to_re "327")) (re.range "4" "7"))))
(assert (str.in_re a (re.++ (re.+ (str.to_re "7")) (str.to_re "229"))))
(assert (str.in_re b (re.* (re.union (str.to_re "79") (str.to_re "226")))))

(assert (> (+ (* 4 (str.len x)) (str.len y) (str.len z) (* (- 10) (str.len a)) (* (- 2) (str.len b))) 4))
(assert (< (+ (* 6 (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 7) (str.to_int z)) (* (- 10) (str.to_int a)) (* 7 (str.to_int b))) 60))

(check-sat)
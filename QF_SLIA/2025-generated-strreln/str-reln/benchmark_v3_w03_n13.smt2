(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "391")) (str.to_re "3"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "33") (re.* (re.range "5" "8"))) (str.to_re "64"))))
(assert (str.in_re z (re.union (str.to_re "626") (re.++ (re.+ (str.to_re "51")) (str.to_re "72")))))

(assert (>= (+ (* 6 (str.len x)) (* (- 4) (str.len y)) (* (- 3) (str.len z))) 53))
(assert (= (+ (* (- 10) (str.len x)) (- (str.len y)) (* 10 (str.len z))) 82))
(assert (> (+ (* 10 (str.to_int x)) (* 5 (str.to_int z))) 97))

(check-sat)
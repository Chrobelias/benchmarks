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

(assert (str.in_re x (re.union (str.to_re "2") (re.++ (re.+ (str.to_re "934")) (re.* (str.to_re "73"))))))
(assert (str.in_re y (re.+ (re.* (str.to_re "400")))))
(assert (str.in_re z (re.++ (re.union (re.* (re.range "5" "9")) (str.to_re "74")) (str.to_re "69"))))
(assert (str.in_re a (re.++ (re.union (str.to_re "210") (re.range "5" "8")) (re.* (str.to_re "99")))))
(assert (str.in_re b (re.++ (re.* (re.union (str.to_re "793") (str.to_re "55"))) (re.range "0" "6"))))

(assert (< (+ (str.len x) (* 5 (str.to_int z)) (* 2 (str.to_int a))) 47))
(assert (> (+ (* 2 (str.len x)) (str.len y) (* 10 (str.len z)) (* (- 4) (str.len b))) 49))
(assert (= (+ (* 6 (str.to_int x)) (* 10 (str.to_int y)) (* 6 (str.to_int z)) (* 7 (str.to_int a)) (* (- 8) (str.to_int b))) 14))

(check-sat)
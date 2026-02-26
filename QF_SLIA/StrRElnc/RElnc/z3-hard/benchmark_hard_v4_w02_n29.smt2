(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= x (str.++ y z "57" a)))

(assert (str.in_re y (re.++ (re.+ (re.union (str.to_re "743") (str.to_re "5"))) (str.to_re "175"))))
(assert (str.in_re a (re.+ (str.to_re "2"))))
(assert (str.in_re x (re.union (re.+ (re.range "1" "9")) (re.++ (str.to_re "212") (str.to_re "83")))))
(assert (str.in_re z (re.* (re.+ (re.union (str.to_re "240") (re.range "4" "7"))))))

(assert (= (+ (* 3 (str.to_int x)) (* 2 (str.to_int z)) (* (- 8) (str.to_int a))) 19))
(assert (= (+ (* 5 (str.len x)) (* (- 7) (str.len y)) (* 7 (str.len z)) (* (- 6) (str.len a))) 46))

(check-sat)
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

(assert (str.in_re x (re.* (str.to_re "291"))))
(assert (str.in_re y (re.+ (re.union (re.range "6" "8") (re.+ (str.to_re "618"))))))
(assert (str.in_re z (re.* (re.union (str.to_re "0") (re.range "4" "7")))))
(assert (str.in_re a (re.++ (re.++ (str.to_re "935") (re.* (str.to_re "3"))) (str.to_re "599"))))
(assert (str.in_re b (re.+ (re.union (re.* (str.to_re "62")) (str.to_re "859")))))

(assert (= (+ (* (- 4) (str.len x)) (str.len y) (* (- 5) (str.len z)) (- (str.len a)) (* 8 (str.len b))) 82))
(assert (= (+ (* 7 (str.len x)) (* 3 (str.len y)) (* 8 (str.len z)) (* (- 2) (str.len a))) 14))
(assert (< (+ (* 2 (str.to_int x)) (* 4 (str.to_int a)) (* (- 5) (str.to_int b))) 4))

(check-sat)
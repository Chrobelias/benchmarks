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

(assert (str.in_re x (re.++ (str.to_re "808") (re.* (str.to_re "783")))))
(assert (str.in_re y (re.+ (re.range "3" "7"))))
(assert (str.in_re z (re.union (re.* (str.to_re "5")) (str.to_re "240"))))
(assert (str.in_re a (re.union (re.* (re.range "0" "3")) (re.union (str.to_re "8") (str.to_re "13")))))
(assert (str.in_re b (re.union (str.to_re "210") (re.+ (re.union (str.to_re "236") (str.to_re "6"))))))

(assert (= (+ (* 2 (str.to_int x)) (* 7 (str.to_int y)) (* (- 4) (str.to_int a)) (* 7 (str.to_int b))) 25))
(assert (< (+ (- (str.len b)) (* 2 (str.to_int b))) 87))
(assert (= (+ (* 5 (str.to_int y)) (* 4 (str.to_int z)) (- (str.to_int a)) (* 6 (str.to_int b))) 40))
(assert (= (+ (* (- 3) (str.len x)) (* (- 4) (str.len y)) (* 6 (str.len z)) (str.len a) (- (str.len b))) 14))

(check-sat)
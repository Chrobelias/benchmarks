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

(assert (str.in_re x (re.++ (re.+ (str.to_re "25")) (re.+ (str.to_re "3")))))
(assert (str.in_re y (re.union (re.* (re.++ (str.to_re "29") (str.to_re "21"))) (str.to_re "9"))))
(assert (str.in_re z (re.++ (re.++ (re.range "7" "9") (re.* (str.to_re "6"))) (re.* (str.to_re "16")))))
(assert (str.in_re a (re.++ (re.union (re.* (str.to_re "8")) (str.to_re "513")) (re.range "2" "5"))))
(assert (str.in_re b (re.* (re.union (str.to_re "5") (re.+ (re.* (str.to_re "28")))))))

(assert (> (+ (* 2 (str.len z)) (* (- 5) (str.len b)) (* 2 (str.to_int x)) (str.to_int z) (* (- 8) (str.to_int a))) 2))
(assert (= (+ (* (- 3) (str.len x)) (* (- 8) (str.len y)) (* 10 (str.len z)) (* (- 2) (str.len a)) (* (- 10) (str.len b))) 27))
(assert (= (+ (* 4 (str.to_int x)) (* (- 10) (str.to_int y)) (* 5 (str.to_int z)) (* 5 (str.to_int a)) (* (- 8) (str.to_int b))) 41))

(check-sat)